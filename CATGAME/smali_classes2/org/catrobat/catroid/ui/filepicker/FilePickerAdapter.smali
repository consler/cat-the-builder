.class public Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;
.source "FilePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;-><init>(Ljava/util/List;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p2, "position"    # I

    .line 54
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 57
    .local v0, "item":Ljava/io/File;
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/ui/filepicker/FileViewHolder;

    iget-object v1, v1, Lorg/catrobat/catroid/ui/filepicker/FileViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/filepicker/FileViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/filepicker/FileViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/catrobat/catroid/ui/filepicker/FileViewHolder;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/filepicker/FileViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/filepicker/FilePickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/filepicker/FileViewHolder;

    move-result-object p1

    return-object p1
.end method
