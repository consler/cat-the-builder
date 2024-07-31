.class public Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;
.super Lorg/catrobat/catroid/ui/BaseCastActivity;
.source "FilePickerActivity.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask$OnListProjectFilesListener;
.implements Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;
.implements Lorg/catrobat/catroid/ui/recyclerview/fragment/ProjectListFragment$ProjectImportFinishedListener;


# static fields
.field private static final PERMISSIONS_REQUEST_IMPORT_FROM_EXTERNAL_STORAGE:I = 0x321

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field private filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/BaseCastActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;

    .line 52
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->getStorageRoots()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;
    .param p1, "x1"    # Ljava/io/File;

    .line 52
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->toggleItemSelection(Ljava/io/File;)V

    return-void
.end method

.method private getFiles()V
    .locals 4

    .line 85
    new-instance v0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$1;

    .line 86
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x321

    const v3, 0x7f120710

    invoke-direct {v0, p0, v2, v1, v3}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$1;-><init>(Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;ILjava/util/List;I)V

    .line 94
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$1;->execute(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method private getStorageRoots()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "rootDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 101
    .local v4, "externalFilesDir":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "path":Ljava/lang/String;
    sget-object v6, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " Path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/Android/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/files"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 105
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    nop

    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 106
    :catch_0
    move-exception v5

    .line 108
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "externalFilesDir is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v4    # "externalFilesDir":Ljava/io/File;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-object v0
.end method

.method private initializeAdapter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    invoke-direct {v0, p1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    .line 128
    new-instance v1, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$2;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$2;-><init>(Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V

    .line 141
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    new-instance v1, Lorg/catrobat/catroid/ui/filepicker/-$$Lambda$FilePickerActivity$GTCK77n7imLhTzhydkol_0SsvhU;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/filepicker/-$$Lambda$FilePickerActivity$GTCK77n7imLhTzhydkol_0SsvhU;-><init>(Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V

    .line 142
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 143
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->startMultiSelectionMode()V

    .line 144
    return-void
.end method

.method private onSelectionChangedAction()V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 164
    return-void
.end method

.method private setShowProgressBar(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 80
    const v0, 0x7f0a054c

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const v0, 0x7f0a056e

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void
.end method

.method private startMultiSelectionMode()V
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->showCheckBoxes:Z

    .line 158
    new-instance v0, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback;-><init>(Lorg/catrobat/catroid/ui/filepicker/SelectActionModeCallback$ActionModeClickListener;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->actionMode:Landroid/view/ActionMode;

    .line 159
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->notifyDataSetChanged()V

    .line 160
    return-void
.end method

.method private toggleItemSelection(Ljava/io/File;)V
    .locals 1
    .param p1, "item"    # Ljava/io/File;

    .line 147
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->toggleSelection(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 149
    return-void
.end method


# virtual methods
.method public endMultiSelectionMode()V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->finish()V

    .line 169
    return-void
.end method

.method public hasUnselectedItems()Z
    .locals 2

    .line 192
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->getSelectableItemCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$initializeAdapter$0$FilePickerActivity(I)V
    .locals 0
    .param p1, "selectedItemCount"    # I

    .line 141
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->onSelectionChangedAction()V

    return-void
.end method

.method public notifyActivityFinished(Z)V
    .locals 1
    .param p1, "success"    # Z

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->setShowProgressBar(Z)V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->setResult(I)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->setResult(I)V

    .line 203
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->finish()V

    .line 204
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 208
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-super {p0}, Lorg/catrobat/catroid/ui/BaseCastActivity;->onBackPressed()V

    .line 213
    :goto_0
    return-void
.end method

.method public onConfirm()V
    .locals 5

    .line 173
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "selectedFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const v1, 0x7f1205bc

    invoke-static {p0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;I)V

    .line 176
    return-void

    .line 178
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->setShowProgressBar(Z)V

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 181
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v3    # "file":Ljava/io/File;
    goto :goto_0

    .line 183
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, "data":Landroid/content/Intent;
    const-string v3, "*/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 186
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->finish()V

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Lorg/catrobat/catroid/ui/BaseCastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 68
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->setContentView(I)V

    .line 69
    const v0, 0x7f0a0617

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 70
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12050b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 71
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    const v0, 0x7f0a056e

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    invoke-direct {p0, v1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->setShowProgressBar(Z)V

    .line 76
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->getFiles()V

    .line 77
    return-void
.end method

.method public onListProjectFilesComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->setShowProgressBar(Z)V

    .line 118
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const v1, 0x7f0a036f

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->initializeAdapter(Ljava/util/List;)V

    .line 124
    :goto_0
    return-void
.end method

.method public onToggleSelection()V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->filePickerAdapter:Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->toggleSelection()V

    .line 154
    return-void
.end method
