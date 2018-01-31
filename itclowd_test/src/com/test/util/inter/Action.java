package com.test.util.inter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.util.ActionForward;

public interface Action {
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception;
}
