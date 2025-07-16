.class public final Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;
.super Ljava/lang/Object;
.source "DefaultToolFactory.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/ToolFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JH\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u001a"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;",
        "Lorg/catrobat/paintroid/tools/ToolFactory;",
        "mainActivity",
        "Lorg/catrobat/paintroid/MainActivity;",
        "(Lorg/catrobat/paintroid/MainActivity;)V",
        "getMainActivity",
        "()Lorg/catrobat/paintroid/MainActivity;",
        "setMainActivity",
        "createTool",
        "Lorg/catrobat/paintroid/tools/Tool;",
        "toolType",
        "Lorg/catrobat/paintroid/tools/ToolType;",
        "toolOptionsViewController",
        "Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "workspace",
        "Lorg/catrobat/paintroid/tools/Workspace;",
        "idlingResource",
        "Landroidx/test/espresso/idling/CountingIdlingResource;",
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "contextCallback",
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "onColorPickedListener",
        "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
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
.field private mainActivity:Lorg/catrobat/paintroid/MainActivity;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/MainActivity;)V
    .locals 1

    const-string v0, "mainActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    return-void
.end method


# virtual methods
.method public createTool(Lorg/catrobat/paintroid/tools/ToolType;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)Lorg/catrobat/paintroid/tools/Tool;
    .locals 14

    move-object v0, p0

    const-string v1, "toolType"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "toolOptionsViewController"

    move-object/from16 v5, p2

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "commandManager"

    move-object/from16 v9, p3

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "workspace"

    move-object/from16 v7, p4

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "idlingResource"

    move-object/from16 v8, p5

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "toolPaint"

    move-object/from16 v6, p6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "contextCallback"

    move-object/from16 v4, p7

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onColorPickedListener"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface/range {p2 .. p2}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->getToolSpecificOptionsLayout()Landroid/view/ViewGroup;

    move-result-object v1

    .line 57
    sget-object v3, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 206
    new-instance v12, Lorg/catrobat/paintroid/tools/implementation/BrushTool;

    .line 207
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 206
    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v12

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 195
    :pswitch_0
    new-instance v13, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;

    .line 196
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    .line 204
    iget-object v12, v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    move-object v2, v13

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 195
    invoke-direct/range {v2 .. v12}, Lorg/catrobat/paintroid/tools/implementation/ClippingTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;JLorg/catrobat/paintroid/MainActivity;)V

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 186
    :pswitch_1
    new-instance v10, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;

    .line 187
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;

    move-object v2, v10

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 186
    invoke-direct/range {v2 .. v9}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;-><init>(Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;)V

    move-object v13, v10

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 176
    :pswitch_2
    new-instance v12, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;

    .line 177
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 176
    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v12

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 166
    :pswitch_3
    new-instance v12, Lorg/catrobat/paintroid/tools/implementation/SprayTool;

    .line 167
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 166
    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;-><init>(Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v12

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 157
    :pswitch_4
    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/HandTool;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v1

    move-object/from16 v3, p7

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p3

    move-wide v9, v10

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/HandTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v1

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 147
    :pswitch_5
    new-instance v12, Lorg/catrobat/paintroid/tools/implementation/TextTool;

    .line 148
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 147
    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/tools/implementation/TextTool;-><init>(Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v12

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 137
    :pswitch_6
    new-instance v12, Lorg/catrobat/paintroid/tools/implementation/LineTool;

    .line 138
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 137
    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/tools/implementation/LineTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v12

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 126
    :pswitch_7
    new-instance v13, Lorg/catrobat/paintroid/tools/implementation/EraserTool;

    .line 127
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    .line 134
    iget-object v1, v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/MainActivity;->getBottomNavigationViewHolder()Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;

    move-result-object v10

    const-wide/32 v11, 0x1c9c380

    move-object v2, v13

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 126
    invoke-direct/range {v2 .. v12}, Lorg/catrobat/paintroid/tools/implementation/EraserTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;J)V

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 116
    :pswitch_8
    new-instance v12, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;

    .line 117
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 116
    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;-><init>(Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v12

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 106
    :pswitch_9
    new-instance v12, Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 107
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 106
    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;-><init>(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v12

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 96
    :pswitch_a
    new-instance v12, Lorg/catrobat/paintroid/tools/implementation/FillTool;

    .line 97
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 96
    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/tools/implementation/FillTool;-><init>(Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v12

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 87
    :pswitch_b
    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;

    move-object v2, v1

    move-object/from16 v3, p7

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V

    move-object v13, v1

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto :goto_0

    .line 78
    :pswitch_c
    new-instance v1, Lorg/catrobat/paintroid/tools/implementation/ImportTool;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v1

    move-object/from16 v3, p7

    move-object/from16 v4, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p3

    move-wide v9, v10

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/ImportTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v1

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto :goto_0

    .line 68
    :pswitch_d
    new-instance v12, Lorg/catrobat/paintroid/tools/implementation/ClipboardTool;

    .line 69
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultClipboardToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultClipboardToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/ClipboardToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 68
    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/tools/implementation/ClipboardTool;-><init>(Lorg/catrobat/paintroid/tools/options/ClipboardToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v12

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    goto :goto_0

    .line 58
    :pswitch_e
    new-instance v12, Lorg/catrobat/paintroid/tools/implementation/CursorTool;

    .line 59
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    const-wide/32 v10, 0x1c9c380

    move-object v2, v12

    move-object/from16 v4, p7

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    .line 58
    invoke-direct/range {v2 .. v11}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Landroidx/test/espresso/idling/CountingIdlingResource;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object v13, v12

    check-cast v13, Lorg/catrobat/paintroid/tools/Tool;

    :goto_0
    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMainActivity()Lorg/catrobat/paintroid/MainActivity;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    return-object v0
.end method

.method public final setMainActivity(Lorg/catrobat/paintroid/MainActivity;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    return-void
.end method
