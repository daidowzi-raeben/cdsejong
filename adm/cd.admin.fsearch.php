<form id="fsearch" name="fsearch" class="local_sch01 local_sch" method="get">
	<input type="hidden" name="type" value="search">
	<input type="hidden" name="company" value="<?php echo get_sanitize_input($company); ?>">
	<table>
		<caption>
			<?php echo $g5['title']; ?> 검색
		</caption>
		<colgroup>
			<col class="grid_4">
			<col>
			<col class="grid_4">
			<col>
		</colgroup>
		<tbody>
			<?php
if ($sub_menu == "50010000") {
?>
			<tr>
				<th scope="row"><label for="mb_year">과정</label></th>
				<td colspan="3">
					<?php echo get_lesson_select("lssn", $lssn, "")?>
				</td>
			</tr>
			<?php
}
?>
			<tr>
				<th scope="row"><label for="mb_3">부서명</label></th>
				<td>
					<input type="text" name="mb_3" id="mb_3" class="frm_input" size="15" maxlength="20" value="<?php echo get_sanitize_input(trim($mb_3)); ?>" />
				</td>
				<th scope="row"><label for="mb_4">부서2</label></th>
				<td>
					<input type="text" name="mb_4" id="mb_4" class="frm_input" size="15" maxlength="20" value="<?php echo get_sanitize_input(trim($mb_4)); ?>" />
				</td>
			</tr>
			<tr>
				<th scope="row"><label for="mb_id">아이디</label></th>
				<td>
					<input type="text" name="mb_id" id="mb_id" class="frm_input" size="15" maxlength="20" value="<?php echo get_sanitize_input(trim($mb_id)); ?>" />
				</td>
				<th scope="row"><label for="mb_name">이름</label></th>
				<td>
					<input type="text" name="mb_name" id="mb_name" class="frm_input" size="15" maxlength="20" value="<?php echo get_sanitize_input(trim($mb_name)); ?>" />
				</td>
			</tr>
		</tbody>
	</table>
	<br />
	<input type="submit" name="act_button" value="검색" class="btn btn_02">
</form>