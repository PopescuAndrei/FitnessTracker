package com.pluralsight.service;

import java.util.List;

import com.pluralsight.dto.GoalReport;
import com.pluralsight.model.Goal;

public interface GoalService {

	Goal save(Goal goal);

	List<Goal> findAllGoals();

	List<GoalReport> findAllGoalReports();
}
