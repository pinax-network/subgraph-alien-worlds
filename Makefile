.PHONY: all
all:
	make build

.PHONY: build
build:
	graph build

.PHONY: deploy
deploy:
	graph build
	graph create --node http://localhost:8020 alien-worlds
	graph deploy --node=http://localhost:8020 alien-worlds

.PHONY: publish
publish:
	graph build
	graph publish --subgraph-id 4UETM9eMQ4Y4otae5sjJscniNhmDUhCDwWTfXm6Tpm14

.PHONY: gui
gui:
	substreams gui ./substreams/wax-transactions-v0.4.2.spkg -e wax.substreams.pinax.network:443 graph_out -s 326292294 --params "graph_out=(code:stkvt.worlds || code:index.worlds || code:awlndratings || code:alien.worlds || code:msig.worlds || code:boost.worlds || code:dao.worlds || code:m.federation || code:other.worlds || code:s.federation || code:federation || code:token.worlds || code:uspts.worlds) && notif:false"