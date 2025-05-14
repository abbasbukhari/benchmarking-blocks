@candidates = [
  {
    id: 1,
    years_of_experience: 4,
    github_points: 150,
    languages: ['Ruby', 'JavaScript'],
    date_applied: 10.days.ago.to_date,
    age: 21
  },
  # ...add more candidates as needed
]

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def find(id)
  @candidates.find { |c| c[:id] == id }
end

def qualified_candidates(candidates)
  candidates.select do |c|
    experienced?(c) &&
      c[:github_points] >= 100 &&
      (c[:languages].include?('Ruby') || c[:languages].include?('Python')) &&
      c[:date_applied] >= 15.days.ago.to_date &&
      c[:age] >= 18
  end
end

def ordered_by_qualifications(candidates)
  candidates.sort_by { |c| [-c[:years_of_experience], -c[:github_points]] }
end