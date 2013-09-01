class User < ActiveRecord::Base
  has_many :talents
  has_many :skills, through: :talents

  def train(skill_id,level=0)
    Talent.create!(user_id: self.id, skill_id:skill_id,level: level)
  end


  def proficiency_for(skill)
    my_skill = Skill.where(name:skill).first.id
    Talent.all(:conditions => {user_id:self.id, skill_id:my_skill}).first.level  
  end

def set_proficiency_for(skill,new_level)
    my_skill = Skill.where(name:skill).first.id
    my_talent = Talent.where(user_id:self.id,skill_id:my_skill).first
    my_talent.level = new_level
    my_talent.save
end


end
