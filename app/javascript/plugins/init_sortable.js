import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('.profile-two-grid');
  if (list) {
    Sortable.create(list);
  }
};

export { initSortable };
