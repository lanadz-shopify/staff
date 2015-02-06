PROFILE_IDS = [
                    "e82bed93-c3aa-8c66-7bc8-07d7e46ef26e",
                    "37491502-5ff8-9b31-d735-4337d0587c2c",
                    "85f6c3c0-e008-6922-23bd-591e864f1cb7",
                    "2e4655e3-45e1-cd90-b8dc-7f33aa2e2a42",
                    "be985dc7-de50-527c-8bdc-26e856497a59",
                    "4cb677c7-9500-6223-5bdb-973b6c33d369",
                    "bb7c2ab1-69a9-7966-1be2-2c2409af7b57",
                    "5ad6bdc9-630c-890e-90d2-6200c07384b7",
                    "27456805-e9d3-373b-d629-4527f24ae055",
                    "75a15ec6-ca71-0f42-6d18-8a2083033c21",
                    "c5dbf621-ee5e-3552-ce00-e3523005bf5b",
                  ]
file_path = Dir.chdir(Dir.pwd+"/123")
old_files = Dir.glob("*")
PROFILE_IDS.each_with_index do |file_new, index|
	File.rename(old_files[index], file_new+'.xml')
end
