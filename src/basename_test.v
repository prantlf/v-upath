module upath

const slash = '/'

fn test_empty() {
	out := basename('')
	assert out == ''
}

fn test_name() {
	out := basename('a')
	assert out == 'a'
}

fn test_slash() {
	out := basename('${upath.slash}')
	assert out == '${upath.slash}'
}

fn test_two_slashes() {
	out := basename('${upath.slash}${upath.slash}')
	assert out == '${upath.slash}'
}

fn test_name_ends_with_slash() {
	out := basename('a${upath.slash}')
	assert out == 'a'
}

fn test_name_ends_with_two_slashes() {
	out := basename('a${upath.slash}${upath.slash}')
	assert out == 'a'
}

fn test_name_starts_with_slash() {
	out := basename('${upath.slash}a')
	assert out == 'a'
}

fn test_names_with_slash() {
	out := basename('a${upath.slash}b')
	assert out == 'b'
}
