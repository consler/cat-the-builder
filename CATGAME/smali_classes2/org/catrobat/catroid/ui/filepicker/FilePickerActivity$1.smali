.class Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$1;
.super Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->getFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;ILjava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;
    .param p2, "permissionRequestId"    # I
    .param p4, "rationaleString"    # I

    .line 87
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$1;->this$0:Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;-><init>(ILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public task()V
    .locals 3

    .line 91
    new-instance v0, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$1;->this$0:Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;-><init>(Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask$OnListProjectFilesListener;)V

    iget-object v1, p0, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity$1;->this$0:Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;

    .line 92
    invoke-static {v1}, Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;->access$000(Lorg/catrobat/catroid/ui/filepicker/FilePickerActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/io/File;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/filepicker/ListProjectFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    return-void
.end method
