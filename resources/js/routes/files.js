const FilesIndex = () => import('../pages/files/Index.vue');

export default {
    name: 'core.files.index',
    path: '/admin/files',
    component: FilesIndex,
    meta: {
        breadcrumb: 'files',
        title: 'Files',
    },
};
