extends Resource
class_name Options

static func basic_road_screen_options_list():
	return {
		1: 'TRAVEL',
		2: 'CHECK_SUPPLIES',
		3: 'MAP_SCREEN',
		4: 'TRAVEL_PACE',
		5: 'DIET',
		6: 'REST',
		7: 'TRADE',
		8: 'HUNT',
		9: 'SHOP',
		10: 'TALK'
	}


static func station_screen_options_list():
	return {
		1: {
			'id': 'TRAVEL',
			'name': 'Seguir viagem'
		},
		2: {
			'id': 'CHECK_SUPPLIES',
			'name': 'Verificar suplementos'
		},
		3: {
			'id': 'MAP_SCREEN',
			'name': 'Olhar mapa'
		},
		4: {
			'id': 'TRAVEL_PACE',
			'name': 'Ajustar ritmo'
		},
		5: {
			'id': 'DIET',
			'name': 'Ajustar dieta'
		},
		6: {
			'id': 'REST',
			'name': 'Descansar'
		},
		7: {
			'id': 'TRADE',
			'name': 'Tentar trocar'
		},
		8: {
			'id': 'HUNT',
			'name': 'Tentar caçar'
		},
		9: {
			'id': 'SHOP',
			'name': 'Comprar'
		},
		0: {
			'id': 'TALK',
			'name': 'Falar com as pessoas'
		},
	}
