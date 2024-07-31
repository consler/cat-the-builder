.class final Lorg/catrobat/paintroid/MainActivity$onCreateMainView$listener$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/implementation/DefaultWorkspace$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/MainActivity;->onCreateMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invalidate"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/MainActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/MainActivity$onCreateMainView$listener$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/catrobat/paintroid/MainActivity$onCreateMainView$listener$1;->this$0:Lorg/catrobat/paintroid/MainActivity;

    invoke-static {v0}, Lorg/catrobat/paintroid/MainActivity;->access$getDrawingSurface$p(Lorg/catrobat/paintroid/MainActivity;)Lorg/catrobat/paintroid/ui/DrawingSurface;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/DrawingSurface;->refreshDrawingSurface()V

    return-void
.end method
