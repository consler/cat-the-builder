.class public final Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;
.super Ljava/lang/Object;
.source "ReorderLayersCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u001e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "position",
        "",
        "destination",
        "(II)V",
        "<set-?>",
        "getDestination",
        "()I",
        "getPosition",
        "freeResources",
        "",
        "run",
        "canvas",
        "Landroid/graphics/Canvas;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
        "Companion",
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


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private destination:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;->Companion:Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand$Companion;

    const-string v0, "ReorderLayersCommand"

    .line 33
    sput-object v0, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;->position:I

    .line 30
    iput p2, p0, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;->destination:I

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    return-void
.end method

.method public final getDestination()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;->destination:I

    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;->position:I

    return v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "layerModel"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;->getPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getLayerAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;->getPosition()I

    move-result v1

    invoke-interface {p2, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->removeLayerAt(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0}, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;->getDestination()I

    move-result v0

    invoke-interface {p2, v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->addLayerAt(ILorg/catrobat/paintroid/contract/LayerContracts$Layer;)Z

    move-result v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 46
    sget-object p1, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;->TAG:Ljava/lang/String;

    const-string p2, "Could not retrieve layer to reorder!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
