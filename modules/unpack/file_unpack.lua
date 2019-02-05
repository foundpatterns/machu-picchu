-- unpacks the files from `.mp/` to their respective as per manifest.scl
file_unpack = {}

function pluck(from_path, rep_name, 
    to_path, file_name, mp_path)

  -- map directories as per `scl` file
  local src_path = get_rep_path(mp_path, rep_name) .. "/" .. file_name
	local dest_path = get_dest_path(from_path, to_path)

  fs.create_dir(dest_path, true)
  fs.copy_file(src_path, dest_path)
end

function export(from_path, rep_name, 
    to_path, export_directory, mp_path)

  local rep_loc = get_rep_path(mp_path, rep_name)
  local export_dir_path = rep_loc .. "/" .. export_directory
  local dest_path = get_dest_path(from_path, to_path)

  fs.create_dir(dest_path, true)
  fs.copy_dir(export_dir_path, dest_path)
end

function full_copy(from_path, rep_name, to_path, mp_path)

  local rep_loc = get_rep_path(mp_path, rep_name)
	local dest_path = get_dest_path(from_path, to_path)

  fs.create_dir(dest_path, true)
  fs.copy_dir(rep_loc, dest_path)
end

function get_rep_path(mp_path, rep_name)
  return fs.join(mp_path, rep_name)
end

function get_dest_path(from, to)
  if to == "." or to == "" then
      return from .. "/"
  end
  return from .. "/" .. to
end
