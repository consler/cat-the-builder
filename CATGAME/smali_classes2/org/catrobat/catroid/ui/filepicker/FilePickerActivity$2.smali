.class Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$2;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->initializeAdapter(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;

    .line 128
    iput-object p1, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$2;->this$0:Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/io/File;)V
    .locals 1
    .param p1, "item"    # Ljava/io/File;

    .line 131
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$2;->this$0:Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->access$100(Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;Ljava/io/File;)V

    .line 132
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$2;->onItemClick(Ljava/io/File;)V

    return-void
.end method

.method public onItemLongClick(Ljava/io/File;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 1
    .param p1, "item"    # Ljava/io/File;
    .param p2, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    .line 135
    iget-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$2;->this$0:Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->access$100(Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;Ljava/io/File;)V

    .line 136
    return-void
.end method

.method public bridge synthetic onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$2;->onItemLongClick(Ljava/io/File;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    return-void
.end method

.method public onSettingsClick(Ljava/io/File;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Ljava/io/File;
    .param p2, "view"    # Landroid/view/View;

    .line 139
    return-void
.end method

.method public bridge synthetic onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$2;->onSettingsClick(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method
