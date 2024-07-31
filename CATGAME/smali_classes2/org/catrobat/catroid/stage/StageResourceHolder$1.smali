.class Lorg/catrobat/catroid/stage/StageResourceHolder$1;
.super Ljava/lang/Object;
.source "StageResourceHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/StageResourceHolder;->initResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/stage/StageResourceHolder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/stage/StageResourceHolder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/stage/StageResourceHolder;

    .line 222
    iput-object p1, p0, Lorg/catrobat/catroid/stage/StageResourceHolder$1;->this$0:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 225
    iget-object v0, p0, Lorg/catrobat/catroid/stage/StageResourceHolder$1;->this$0:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-static {v0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->access$000(Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    .line 226
    return-void
.end method
