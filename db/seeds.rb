Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
non_fiction = Genre.create!(name: 'Non-Fiction')
music = Genre.create!(name: 'Music')

Book.create!(
  [
    {
      title: 'Zen and the Art of Motorcycle maintenance',
      author: 'Robert Pirsig',
      description: 'A fantastic journey ...',
      rating: 5,
      amazon_id: '0099322617',
      finished_on: 10.days.ago,
      genres: [non_fiction]
    }, {
      title: '100 Years of Solitude',
      author: 'Gabriel Garcia Marquez',
      description: 'Makondo and its inhabitants through years.',
      rating: 5,
      amazon_id: '0241968585',
      finished_on: 10.days.ago,
      genres: [fiction]
    }, {
      title: 'No Irish, No Blacks, No Dogs',
      author: 'John Lydon',
      description: '... captures the rancid flavour of Lydon ...',
      rating: 4,
      amazon_id: '0859653412',
      finished_on: nil,
      genres: [non_fiction, music]
    },
  ]
)
