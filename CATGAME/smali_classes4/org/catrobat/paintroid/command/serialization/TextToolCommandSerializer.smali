.class public final Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;
.super Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
.source "TextToolCommandSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
        "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J(\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000eH\u0016J(\u0010\u000f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u000eH\u0016J \u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;",
        "version",
        "",
        "activityContext",
        "Landroid/content/Context;",
        "(ILandroid/content/Context;)V",
        "read",
        "kryo",
        "Lcom/esotericsoftware/kryo/Kryo;",
        "input",
        "Lcom/esotericsoftware/kryo/io/Input;",
        "type",
        "Ljava/lang/Class;",
        "readCurrentVersion",
        "write",
        "",
        "output",
        "Lcom/esotericsoftware/kryo/io/Output;",
        "command",
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
.field private final activityContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "activityContext"    # Landroid/content/Context;

    const-string v0, "activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;-><init>(I)V

    iput-object p2, p0, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->activityContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/TextToolCommand;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;",
            ">;)",
            "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;"
        }
    .end annotation

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v0, p0

    check-cast v0, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    invoke-super {p0, v0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;->handleVersions(Lorg/catrobat/paintroid/command/serialization/VersionSerializer;Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    return-object v0
.end method

.method public bridge synthetic readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    move-result-object p1

    return-object p1
.end method

.method public readCurrentVersion(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lorg/catrobat/paintroid/command/implementation/TextToolCommand;
    .locals 24
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;",
            ">;)",
            "Lorg/catrobat/paintroid/command/implementation/TextToolCommand;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "kryo"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object/from16 v5, p2

    .local v5, "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v6, 0x0

    .line 56
    .local v6, "$i$a$-with-TextToolCommandSerializer$readCurrentVersion$1":I
    const-class v0, [Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    .line 57
    .local v15, "text":[Ljava/lang/String;
    const-class v0, Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/graphics/Paint;

    .line 58
    .local v14, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v16

    .line 59
    .local v16, "offset":F
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v17

    .line 60
    .local v17, "width":F
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v18

    .line 61
    .local v18, "height":F
    const-class v0, Landroid/graphics/PointF;

    invoke-virtual {v2, v3, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/graphics/PointF;

    .line 62
    .local v13, "position":Landroid/graphics/PointF;
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v19

    .line 63
    .local v19, "rotation":F
    const-class v0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    invoke-virtual {v2, v3, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    .line 65
    .local v12, "typeFaceInfo":Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    move-object v7, v14

    .local v7, "$this$apply":Landroid/graphics/Paint;
    const/4 v8, 0x0

    .line 66
    .local v8, "$i$a$-apply-TextToolCommandSerializer$readCurrentVersion$1$1":I
    invoke-virtual {v12}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getBold()Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 67
    invoke-virtual {v12}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getUnderline()Z

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 68
    invoke-virtual {v12}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getTextSize()F

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    invoke-virtual {v12}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getTextSkewX()F

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 70
    invoke-virtual {v12}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getItalic()Z

    move-result v0

    const/4 v9, 0x2

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    .line 71
    .local v10, "style":I
    nop

    .line 72
    :try_start_0
    invoke-virtual {v12}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->getFont()Lorg/catrobat/paintroid/tools/FontType;

    move-result-object v0

    sget-object v11, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/FontType;->ordinal()I

    move-result v0

    aget v0, v11, v0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_5

    if-eq v0, v9, :cond_4

    const/4 v9, 0x3

    if-eq v0, v9, :cond_3

    const/4 v9, 0x4

    if-eq v0, v9, :cond_2

    const/4 v9, 0x5

    if-ne v0, v9, :cond_1

    .line 77
    iget-object v0, v1, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->activityContext:Landroid/content/Context;

    sget v9, Lorg/catrobat/paintroid/R$font;->dubai:I

    invoke-static {v0, v9}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v5    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .end local v6    # "$i$a$-with-TextToolCommandSerializer$readCurrentVersion$1":I
    .end local v7    # "$this$apply":Landroid/graphics/Paint;
    .end local v8    # "$i$a$-apply-TextToolCommandSerializer$readCurrentVersion$1$1":I
    .end local v10    # "style":I
    .end local v12    # "typeFaceInfo":Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    .end local v13    # "position":Landroid/graphics/PointF;
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "text":[Ljava/lang/String;
    .end local v16    # "offset":F
    .end local v17    # "width":F
    .end local v18    # "height":F
    .end local v19    # "rotation":F
    .end local p1    # "kryo":Lcom/esotericsoftware/kryo/Kryo;
    .end local p2    # "input":Lcom/esotericsoftware/kryo/io/Input;
    .end local p3    # "type":Ljava/lang/Class;
    throw v0

    .line 76
    .restart local v5    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .restart local v6    # "$i$a$-with-TextToolCommandSerializer$readCurrentVersion$1":I
    .restart local v7    # "$this$apply":Landroid/graphics/Paint;
    .restart local v8    # "$i$a$-apply-TextToolCommandSerializer$readCurrentVersion$1$1":I
    .restart local v10    # "style":I
    .restart local v12    # "typeFaceInfo":Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    .restart local v13    # "position":Landroid/graphics/PointF;
    .restart local v14    # "paint":Landroid/graphics/Paint;
    .restart local v15    # "text":[Ljava/lang/String;
    .restart local v16    # "offset":F
    .restart local v17    # "width":F
    .restart local v18    # "height":F
    .restart local v19    # "rotation":F
    .restart local p1    # "kryo":Lcom/esotericsoftware/kryo/Kryo;
    .restart local p2    # "input":Lcom/esotericsoftware/kryo/io/Input;
    .restart local p3    # "type":Ljava/lang/Class;
    :cond_2
    iget-object v0, v1, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->activityContext:Landroid/content/Context;

    sget v9, Lorg/catrobat/paintroid/R$font;->stc_regular:I

    invoke-static {v0, v9}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 75
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v0, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_4
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    .line 73
    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    goto :goto_2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "LoadImageAsync"

    const-string v11, "Typeface not supported on this mobile phone"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v9, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    move-object v0, v9

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 83
    .end local v10    # "style":I
    nop

    .line 65
    .end local v7    # "$this$apply":Landroid/graphics/Paint;
    .end local v8    # "$i$a$-apply-TextToolCommandSerializer$readCurrentVersion$1$1":I
    nop

    .line 84
    new-instance v0, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    const-string v7, "text"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "paint"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "position"

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "typeFaceInfo"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    move-object v8, v15

    move-object v9, v14

    move/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v20, v12

    .end local v12    # "typeFaceInfo":Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    .local v20, "typeFaceInfo":Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    move/from16 v12, v18

    move-object/from16 v21, v13

    .end local v13    # "position":Landroid/graphics/PointF;
    .local v21, "position":Landroid/graphics/PointF;
    move-object/from16 v22, v14

    .end local v14    # "paint":Landroid/graphics/Paint;
    .local v22, "paint":Landroid/graphics/Paint;
    move/from16 v14, v19

    move-object/from16 v23, v15

    .end local v15    # "text":[Ljava/lang/String;
    .local v23, "text":[Ljava/lang/String;
    move-object/from16 v15, v20

    invoke-direct/range {v7 .. v15}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;-><init>([Ljava/lang/String;Landroid/graphics/Paint;FFFLandroid/graphics/PointF;FLorg/catrobat/paintroid/command/serialization/SerializableTypeface;)V

    .line 55
    .end local v5    # "$this$with":Lcom/esotericsoftware/kryo/io/Input;
    .end local v6    # "$i$a$-with-TextToolCommandSerializer$readCurrentVersion$1":I
    .end local v16    # "offset":F
    .end local v17    # "width":F
    .end local v18    # "height":F
    .end local v19    # "rotation":F
    .end local v20    # "typeFaceInfo":Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    .end local v21    # "position":Landroid/graphics/PointF;
    .end local v22    # "paint":Landroid/graphics/Paint;
    .end local v23    # "text":[Ljava/lang/String;
    return-object v0
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p3, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/TextToolCommand;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lorg/catrobat/paintroid/command/implementation/TextToolCommand;)V
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "command"    # Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    const-string v0, "kryo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    move-object v0, p1

    .local v0, "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    const/4 v1, 0x0

    .line 37
    .local v1, "$i$a$-with-TextToolCommandSerializer$write$1":I
    move-object v2, p2

    .local v2, "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-with-TextToolCommandSerializer$write$1$1":I
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getMultilineText()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getTextPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getBoxOffset()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 41
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getBoxWidth()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 42
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getBoxHeight()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 43
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getToolPosition()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getRotationAngle()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    .line 45
    invoke-virtual {p3}, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;->getTypeFaceInfo()Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 46
    nop

    .line 37
    .end local v2    # "$this$with":Lcom/esotericsoftware/kryo/io/Output;
    .end local v3    # "$i$a$-with-TextToolCommandSerializer$write$1$1":I
    nop

    .line 47
    nop

    .line 36
    .end local v0    # "$this$with":Lcom/esotericsoftware/kryo/Kryo;
    .end local v1    # "$i$a$-with-TextToolCommandSerializer$write$1":I
    nop

    .line 48
    return-void
.end method
