.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HorizontalProjectsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final THUMBNAIL_SIZE:I = 0x96


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->listener:Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;)Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->listener:Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->items:Ljava/util/List;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 41
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/ProjectData;

    .line 68
    .local v0, "project":Lorg/catrobat/catroid/common/ProjectData;
    new-instance v1, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    const/16 v2, 0x96

    invoke-direct {v1, v2, v2}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;-><init>(II)V

    .line 71
    .local v1, "loader":Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v0}, Lorg/catrobat/catroid/common/ProjectData;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->getScreenshotSceneName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 71
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->loadAndShowScreenshot(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V

    .line 74
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 59
    nop

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01ce

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/ProjectData;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->items:Ljava/util/List;

    .line 53
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method
