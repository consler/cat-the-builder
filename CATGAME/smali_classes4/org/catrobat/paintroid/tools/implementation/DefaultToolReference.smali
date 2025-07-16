.class public final Lorg/catrobat/paintroid/tools/implementation/DefaultToolReference;
.super Ljava/lang/Object;
.source "DefaultToolReference.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/ToolReference;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/DefaultToolReference;",
        "Lorg/catrobat/paintroid/tools/ToolReference;",
        "()V",
        "tool",
        "Lorg/catrobat/paintroid/tools/Tool;",
        "getTool",
        "()Lorg/catrobat/paintroid/tools/Tool;",
        "setTool",
        "(Lorg/catrobat/paintroid/tools/Tool;)V",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private tool:Lorg/catrobat/paintroid/tools/Tool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTool()Lorg/catrobat/paintroid/tools/Tool;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolReference;->tool:Lorg/catrobat/paintroid/tools/Tool;

    return-object v0
.end method

.method public setTool(Lorg/catrobat/paintroid/tools/Tool;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolReference;->tool:Lorg/catrobat/paintroid/tools/Tool;

    return-void
.end method
