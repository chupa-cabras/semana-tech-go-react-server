package api

import (
	"net/http"

	"github.com/chupa-cabras/semana-tech-go-react-server/internal/store/pgstore"
	"github.com/go-chi/chi/v5"
)

type apiHandler struct {
	q *pgstore.Queries
	r *chi.Mux
}

func (h apiHandler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	h.r.ServeHTTP(w, r)
}

func NewHandler(q *pgstore.Queries) http.Handler {
	a := apihandler{
		q: q,
	}

	r := chi.NewRouter()

	a.r = r
	return a
}
