package decision

import (
	"context"
	"encoding/json"
	"fmt"

	"github.com/flagship-io/flagship-go-sdk/v2/pkg/model"
)

// APIClientMock represents the API client mock informations
type APIClientMock struct {
	envID        string
	responseMock *model.APIClientResponse
	statusCode   int
}

// NewAPIClientMock creates a fake api client that returns a specific response
func NewAPIClientMock(envID string, responseMock *model.APIClientResponse, statusCode int) *APIClientMock {
	res := APIClientMock{
		envID:        envID,
		responseMock: responseMock,
		statusCode:   statusCode,
	}

	return &res
}

// GetModifications gets modifications from Decision API
func (r *APIClientMock) GetModifications(visitorID string, anonymousID *string, modelContext model.Context) (*model.APIClientResponse, error) {
	return r.GetModificationsWithContext(context.Background(), visitorID, anonymousID, modelContext)
}

// GetModifications gets modifications from Decision API
func (r *APIClientMock) GetModificationsWithContext(ctx context.Context, visitorID string, anonymousID *string, context model.Context) (*model.APIClientResponse, error) {
	_, err := json.Marshal(model.APIClientRequest{
		VisitorID:   visitorID,
		AnonymousID: anonymousID,
		Context:     context,
		TriggerHit:  false,
	})

	if err != nil {
		return nil, err
	}

	if r.statusCode != 200 {
		return nil, fmt.Errorf("Status code %v", r.statusCode)
	}

	return r.responseMock, nil
}
