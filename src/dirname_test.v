module upath

const slash = '/'

fn test_empty() {
	out := dirname('')
	assert out == '.'
}

fn test_name() {
	out := dirname('a')
	assert out == '.'
}

fn test_slash() {
	out := dirname('${upath.slash}')
	assert out == '${upath.slash}'
}

fn test_two_slashes() {
	out := dirname('${upath.slash}${upath.slash}')
	assert out == '${upath.slash}'
}

fn test_name_ends_with_slash() {
	out := dirname('a${upath.slash}')
	assert out == '.'
}

fn test_name_ends_with_two_slashes() {
	out := dirname('a${upath.slash}${upath.slash}')
	assert out == '.'
}

fn test_name_starts_with_slash() {
	out := dirname('${upath.slash}a')
	assert out == '${upath.slash}'
}

fn test_name_starts_with_two_slashes() {
	out := dirname('${upath.slash}${upath.slash}a')
	assert out == '${upath.slash}'
}

fn test_names_with_slash() {
	out := dirname('a${upath.slash}b')
	assert out == 'a'
}
