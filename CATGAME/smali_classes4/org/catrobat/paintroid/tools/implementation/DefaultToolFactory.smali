.class public final Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;
.super Ljava/lang/Object;
.source "DefaultToolFactory.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/ToolFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory;",
        "Lorg/catrobat/paintroid/tools/ToolFactory;",
        "()V",
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
        "toolPaint",
        "Lorg/catrobat/paintroid/tools/ToolPaint;",
        "contextCallback",
        "Lorg/catrobat/paintroid/tools/ContextCallback;",
        "onColorPickedListener",
        "Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTool(Lorg/catrobat/paintroid/tools/ToolType;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)Lorg/catrobat/paintroid/tools/Tool;
    .locals 19
    .param p1, "toolType"    # Lorg/catrobat/paintroid/tools/ToolType;
    .param p2, "toolOptionsViewController"    # Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;
    .param p3, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;
    .param p4, "workspace"    # Lorg/catrobat/paintroid/tools/Workspace;
    .param p5, "toolPaint"    # Lorg/catrobat/paintroid/tools/ToolPaint;
    .param p6, "contextCallback"    # Lorg/catrobat/paintroid/tools/ContextCallback;
    .param p7, "onColorPickedListener"    # Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;

    const-string v0, "toolType"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolOptionsViewController"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workspace"

    move-object/from16 v13, p4

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolPaint"

    move-object/from16 v14, p5

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallback"

    move-object/from16 v15, p6

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onColorPickedListener"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface/range {p2 .. p2}, Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;->getToolSpecificOptionsLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 53
    .local v0, "toolLayout":Landroid/view/ViewGroup;
    sget-object v2, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 176
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/BrushTool;

    .line 177
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    .line 178
    nop

    .line 179
    nop

    .line 180
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    const-wide/32 v9, 0x1c9c380

    .line 176
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/BrushTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 168
    :pswitch_0
    new-instance v10, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;

    .line 169
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;

    .line 170
    nop

    .line 171
    nop

    .line 172
    nop

    .line 173
    nop

    .line 174
    nop

    .line 168
    move-object v2, v10

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lorg/catrobat/paintroid/tools/implementation/SmudgeTool;-><init>(Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;)V

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 159
    :pswitch_1
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;

    .line 160
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    .line 161
    nop

    .line 162
    nop

    .line 163
    nop

    .line 164
    nop

    .line 165
    nop

    .line 166
    const-wide/32 v17, 0x1c9c380

    .line 159
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-wide/from16 v9, v17

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/WatercolorTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 150
    :pswitch_2
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/SprayTool;

    .line 151
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView;

    .line 152
    nop

    .line 153
    nop

    .line 154
    nop

    .line 155
    nop

    .line 156
    nop

    .line 157
    const-wide/32 v9, 0x1c9c380

    .line 150
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/SprayTool;-><init>(Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 142
    :pswitch_3
    new-instance v10, Lorg/catrobat/paintroid/tools/implementation/HandTool;

    .line 143
    nop

    .line 144
    nop

    .line 145
    nop

    .line 146
    nop

    .line 147
    nop

    .line 148
    const-wide/32 v8, 0x1c9c380

    .line 142
    move-object v2, v10

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v9}, Lorg/catrobat/paintroid/tools/implementation/HandTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 133
    :pswitch_4
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/TextTool;

    .line 134
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    nop

    .line 139
    nop

    .line 140
    const-wide/32 v9, 0x1c9c380

    .line 133
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/TextTool;-><init>(Lorg/catrobat/paintroid/tools/options/TextToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 124
    :pswitch_5
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/LineTool;

    .line 125
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    .line 126
    nop

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 131
    const-wide/32 v9, 0x1c9c380

    .line 124
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/LineTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 115
    :pswitch_6
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/EraserTool;

    .line 116
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    .line 117
    nop

    .line 118
    nop

    .line 119
    nop

    .line 120
    nop

    .line 121
    nop

    .line 122
    const-wide/32 v9, 0x1c9c380

    .line 115
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/EraserTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 106
    :pswitch_7
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;

    .line 107
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultShapeToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;

    .line 108
    nop

    .line 109
    nop

    .line 110
    nop

    .line 111
    nop

    .line 112
    nop

    .line 113
    const-wide/32 v9, 0x1c9c380

    .line 106
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/ShapeTool;-><init>(Lorg/catrobat/paintroid/tools/options/ShapeToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 97
    :pswitch_8
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/TransformTool;

    .line 98
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    const-wide/32 v9, 0x1c9c380

    .line 97
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/TransformTool;-><init>(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 88
    :pswitch_9
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/FillTool;

    .line 89
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    nop

    .line 95
    const-wide/32 v9, 0x1c9c380

    .line 88
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/FillTool;-><init>(Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 80
    :pswitch_a
    new-instance v9, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;

    .line 81
    nop

    .line 82
    nop

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 80
    move-object v2, v9

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lorg/catrobat/paintroid/tools/implementation/PipetteTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;)V

    move-object v10, v9

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto/16 :goto_0

    .line 72
    :pswitch_b
    new-instance v10, Lorg/catrobat/paintroid/tools/implementation/ImportTool;

    .line 73
    nop

    .line 74
    nop

    .line 75
    nop

    .line 76
    nop

    .line 77
    nop

    .line 78
    const-wide/32 v8, 0x1c9c380

    .line 72
    move-object v2, v10

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v9}, Lorg/catrobat/paintroid/tools/implementation/ImportTool;-><init>(Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto :goto_0

    .line 63
    :pswitch_c
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/StampTool;

    .line 64
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultStampToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;

    .line 65
    nop

    .line 66
    nop

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 70
    const-wide/32 v9, 0x1c9c380

    .line 63
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/StampTool;-><init>(Lorg/catrobat/paintroid/tools/options/StampToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    goto :goto_0

    .line 54
    :pswitch_d
    new-instance v16, Lorg/catrobat/paintroid/tools/implementation/CursorTool;

    .line 55
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-direct {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;-><init>(Landroid/view/ViewGroup;)V

    move-object v3, v2

    check-cast v3, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;

    .line 56
    nop

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 60
    nop

    .line 61
    const-wide/32 v9, 0x1c9c380

    .line 54
    move-object/from16 v2, v16

    move-object/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v10}, Lorg/catrobat/paintroid/tools/implementation/CursorTool;-><init>(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;Lorg/catrobat/paintroid/tools/ContextCallback;Lorg/catrobat/paintroid/tools/options/ToolOptionsViewController;Lorg/catrobat/paintroid/tools/ToolPaint;Lorg/catrobat/paintroid/tools/Workspace;Lorg/catrobat/paintroid/command/CommandManager;J)V

    move-object/from16 v10, v16

    check-cast v10, Lorg/catrobat/paintroid/tools/Tool;

    .line 53
    :goto_0
    return-object v10

    :pswitch_data_0
    .packed-switch 0x1
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
