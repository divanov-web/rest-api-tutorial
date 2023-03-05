package db

import (
	"context"
	"rest-api-tutorial/internal/user"
	"rest-api-tutorial/pkg/logging"
)

type db struct {
}

func (d db) Create(ctx context.Context, user user.User) (string, error) {
	//TODO implement me
	panic("implement me")
}

func (d db) FindOne(ctx context.Context, id string) (user.User, error) {
	//TODO implement me
	panic("implement me")
}

func (d db) Update(ctx context.Context, user user.User) error {
	//TODO implement me
	panic("implement me")
}

func (d db) Delete(ctx context.Context, id string) error {
	//TODO implement me
	panic("implement me")
}

func NewStorage(collection string, logger *logging.Logger) user.Storage {
	return &db{}
}
