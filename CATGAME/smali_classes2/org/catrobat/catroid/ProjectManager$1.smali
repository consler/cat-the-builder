.class Lorg/catrobat/catroid/ProjectManager$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "ProjectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ProjectManager;->loadDownloadedProjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ProjectManager;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ProjectManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ProjectManager;

    .line 705
    iput-object p1, p0, Lorg/catrobat/catroid/ProjectManager$1;->this$0:Lorg/catrobat/catroid/ProjectManager;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
