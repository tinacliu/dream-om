import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('.profile-two-grid');
  Sortable.create(list);
};

export { initSortable };
