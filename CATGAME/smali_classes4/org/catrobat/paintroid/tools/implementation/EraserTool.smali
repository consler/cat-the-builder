.class public final Lorg/catrobat/paintroid/tools/implementation/EraserTool;
.super Lorg/catrobat/paintroid/tools/implementation/BrushTool;
.source "EraserTool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014J\u0006\u0010!\u001a\u00020\"R\u0014\u0010\u0015\u001a\u00020\u00168TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u00168TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u00020\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/EraserTool;",
        "Lorg/catrobat/paintroid/tools/implementation/BrushTool;",
        "brushToolOptionsView",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;",
        "contextCallback",
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "toolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "bottomNavigationViewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;",
        "drawTime",
        "",
        "(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;J)V",
        "bitmapPaint",
        "Landroid/graphics/Paint;",
        "getBitmapPaint",
        "()Landroid/graphics/Paint;",
        "previewPaint",
        "getPreviewPaint",
        "savedColor",
        "",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "getToolType",
        "()Lorg/catrobat/paintroid/tools/ToolType;",
        "setSavedColor",
        "",
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
.field private bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

.field private savedColor:I


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;J)V
    .locals 14

    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p4

    move-object/from16 v13, p8

    const-string v0, "brushToolOptionsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idlingResource"

    move-object/from16 v6, p6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomNavigationViewHolder"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move-wide/from16 v8, p9

    .line 43
    invoke-direct/range {v0 .. v9}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    .line 58
    iput-object v13, v10, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    const/4 v0, 0x0

    .line 59
    invoke-virtual {v13, v0}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->enableColorItemView(Z)V

    .line 60
    invoke-virtual {v13, v0}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->setColorButtonColor(I)V

    .line 61
    invoke-interface/range {p4 .. p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getColor()I

    move-result v1

    iput v1, v10, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->savedColor:I

    .line 62
    invoke-interface {v12, v0}, Lorg/catrobat/paintroid/tools/ToolPaint;->setColor(I)V

    .line 63
    invoke-interface/range {p4 .. p4}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setCurrentPaint(Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected getBitmapPaint()Landroid/graphics/Paint;
    .locals 2

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 74
    invoke-super {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->getBitmapPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 75
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getEraseXfermode()Landroid/graphics/PorterDuffXfermode;

    move-result-object v1

    check-cast v1, Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-object v0
.end method

.method protected getPreviewPaint()Landroid/graphics/Paint;
    .locals 2

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 67
    invoke-super {p0}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;->getPreviewPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getCheckeredShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-object v0
.end method

.method public getToolType()Lorg/catrobat/paintroid/tools/ToolType;
    .locals 1

    .line 80
    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->ERASER:Lorg/catrobat/paintroid/tools/ToolType;

    return-object v0
.end method

.method public final setSavedColor()V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->enableColorItemView(Z)V

    .line 84
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->bottomNavigationViewHolder:Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->savedColor:I

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->setColorButtonColor(I)V

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    iget v1, p0, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->savedColor:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->setColor(I)V

    .line 86
    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->getBrushToolOptionsView()Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/EraserTool;->toolPaint:Lorg/catrobat/paintroid/tools/ToolPaint;

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/ToolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;->setCurrentPaint(Landroid/graphics/Paint;)V

    return-void
.end method
