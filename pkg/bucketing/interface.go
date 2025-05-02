package bucketing

import "github.com/flagship-io/flagship-common/proto"

// ConfigAPIInterface manage the bucketing configuration
type ConfigAPIInterface interface {
	GetConfiguration() (*proto.Bucketing_BucketingResponse, error)
}
