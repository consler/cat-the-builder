.class public final Lorg/catrobat/paintroid/tools/implementation/SprayTool$1;
.super Ljava/lang/Object;
.source "SprayTool.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/SprayTool;-><init>(Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/paintroid/tools/implementation/SprayTool$1",
        "Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;",
        "radiusChanged",
        "",
        "radius",
        "",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/SprayTool;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/SprayTool;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/tools/implementation/SprayTool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/SprayTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/SprayTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public radiusChanged(I)V
    .locals 2
    .param p1, "radius"    # I

    .line 81
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/SprayTool$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/SprayTool;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1e

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;->access$setSprayRadius$p(Lorg/catrobat/paintroid/tools/implementation/SprayTool;I)V

    .line 82
    return-void
.end method
