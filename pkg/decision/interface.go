package decision

import (
	"context"

	"github.com/flagship-io/flagship-go-sdk/v2/pkg/model"
)

// ClientInterface is the modification engine interface
type ClientInterface interface {
	GetModifications(visitorID string, anonymousID *string, context model.Context) (*model.APIClientResponse, error)
	GetModificationsWithContext(ctx context.Context, visitorID string, anonymousID *string, context model.Context) (*model.APIClientResponse, error)
}
