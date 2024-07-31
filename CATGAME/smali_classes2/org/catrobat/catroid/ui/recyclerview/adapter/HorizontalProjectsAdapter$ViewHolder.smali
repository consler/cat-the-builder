.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HorizontalProjectsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 88
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

    .line 89
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 90
    const v0, 0x7f0a0552

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 91
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->access$100(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;)Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;->access$000(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectsAdapter$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/ProjectData;

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/ProjectListener;->onProjectClick(Lorg/catrobat/catroid/common/ProjectData;)V

    .line 97
    return-void
.end method
