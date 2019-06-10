import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('.profile-one-grid');
  if (list) {
    Sortable.create(list);
  }
};

export { initSortable };
