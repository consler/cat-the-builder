.class final Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleUp$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseToolWithRectangleShape.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleUp(Landroid/graphics/PointF;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Landroid/graphics/PointF;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "<name for destructuring parameter 0>",
        "",
        "Landroid/graphics/PointF;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleUp$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 317
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleUp$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$dstr$coordinate$previousEventCoordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 317
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 318
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleUp$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget-object v1, v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->movedDistance:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 319
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleUp$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget-object v1, v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->movedDistance:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    return-void
.end method
