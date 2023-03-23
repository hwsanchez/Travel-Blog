<template>
<div class="box">

     <div class="field">
        <label class="label">Author</label>
        <div class="control has-icons-left has-icons-right">
          <input class="input" type="text" placeholder="Text input" value="Author's name">
          <span class="icon is-small is-left">
             <i class="fas fa-user"></i>
          </span>
        </div>
      </div>
      <div class="field">
      <label class="label">Blog's Title</label>
      <div class="control">
        <input class="input" type="text" placeholder="Text input">
      </div>
    </div>

     <div class="field">
        <label class="label">Date</label>
        <div class="control has-icons-left has-icons-right">
          <input type="date" id="start" name="trip-start"
           value="2023-01-01"
           min="2000-01-01" max="2023-30-01">
        </div>
      </div>

    <div class="field">
      <label class="label">City</label>
      <div class="control has-icons-left has-icons-right">
        <input class="input" type="text" placeholder="Text input" value="">
        <span class="icon is-small is-left">
          <i class="fa-solid fa-tree-city"></i>
        </span>
      </div>
    </div>

    <div class="field">
      <label class="label">Country</label>
      <div class="control has-icons-left has-icons-right">
        <input class="input" type="text" placeholder="Text input" value="">
        <span class="icon is-small is-left">
          <i class="fa-solid fa-flag"></i>
        </span>
      </div>
    </div>

    <div class="field">
      <label class="label">Author's Image URL</label>
      <div class="control has-icons-left has-icons-right">
        <input class="input" type="text" placeholder="Text input" value="">
      </div>
    </div>

    <div class="field">
      <label class="label">City Image URL</label>
      <div class="control has-icons-left has-icons-right">
        <input class="input" type="text" placeholder="Text input" value="">
      </div>
    </div>

  
    <div class="field">
      <label class="label">Blog</label>
      <div class="control">
        <textarea class="textarea" placeholder="Textarea"></textarea>
      </div>
    </div>

    <div class="field">
      <div class="control">
        <label class="checkbox">
          <input type="checkbox">
          I agree to the <a href="#">terms and conditions</a>
        </label>
      </div>
    </div>

    <div class="field">
      <div class="control">
        <label class="radio">
          <input type="radio" name="question">
          Yes
        </label>
        <label class="radio">
          <input type="radio" name="question">
          No
        </label>
      </div>
    </div>

    <div class="field is-grouped">
      <div class="control">
        <button class="button is-link has-background-grey-darker ">Add Blog</button>
      </div>
      <div class="control">
        <button class="button is-link has-background-grey-light">Cancel</button>
      </div>
    </div>

</div>
  
</template>

