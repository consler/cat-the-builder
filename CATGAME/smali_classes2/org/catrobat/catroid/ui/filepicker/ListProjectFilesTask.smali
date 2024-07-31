.class public Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;
.super Landroid/os/AsyncTask;
.source "ListProjectFilesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask$OnListProjectFilesListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field private weakListenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask$OnListProjectFilesListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask$OnListProjectFilesListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask$OnListProjectFilesListener;

    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;->weakListenerReference:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method

.method private static findProjectFiles(Ljava/io/File;Ljava/util/List;)V
    .locals 6
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "projectFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 60
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-static {v3, p1}, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;->findProjectFiles(Ljava/io/File;Ljava/util/List;)V

    .line 64
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".catrobat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_2
    return-void
.end method

.method public static getAllProjectsFromPocketCodeFolder(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p0, "projectFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    sget-object v0, Lorg/catrobat/catroid/common/FlavoredConstants;->EXTERNAL_STORAGE_ROOT_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/common/FlavoredConstants;->EXTERNAL_STORAGE_ROOT_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 76
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "backpack"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    const-string v5, "code.xml"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v3    # "dir":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method

.method public static varargs task([Ljava/io/File;)Ljava/util/List;
    .locals 4
    .param p0, "startDir"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 50
    .local v3, "dir":Ljava/io/File;
    invoke-static {v3, v0}, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;->findProjectFiles(Ljava/io/File;Ljava/util/List;)V

    .line 49
    .end local v3    # "dir":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;->getAllProjectsFromPocketCodeFolder(Ljava/util/List;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;->doInBackground([Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p1, "startDir"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-static {p1}, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;->task([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;->weakListenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask$OnListProjectFilesListener;

    .line 93
    .local v0, "listener":Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask$OnListProjectFilesListener;
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1}, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask$OnListProjectFilesListener;->onListProjectFilesComplete(Ljava/util/List;)V

    .line 96
    :cond_0
    return-void
.end method
