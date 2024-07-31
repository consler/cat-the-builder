.class public final Lorg/catrobat/catroid/io/XStreamFormulaElementConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;
.source "XStreamFormulaElementConverter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u0007\u001a\u00020\u00082\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\nH\u0016J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\"\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\n \u001a*\u0004\u0018\u00010\u00190\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0002\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/catrobat/catroid/io/XStreamFormulaElementConverter;",
        "Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;",
        "mapper",
        "Lcom/thoughtworks/xstream/mapper/Mapper;",
        "reflectionProvider",
        "Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;",
        "(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V",
        "canConvert",
        "",
        "type",
        "Ljava/lang/Class;",
        "doMarshal",
        "",
        "source",
        "",
        "writer",
        "Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;",
        "context",
        "Lcom/thoughtworks/xstream/converters/MarshallingContext;",
        "doUnmarshal",
        "result",
        "reader",
        "Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;",
        "Lcom/thoughtworks/xstream/converters/UnmarshallingContext;",
        "replaceOldSensorNames",
        "",
        "kotlin.jvm.PlatformType",
        "formulaElement",
        "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 36
    nop

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    return-void
.end method

.method private final replaceOldSensorNames(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Ljava/lang/String;
    .locals 2
    .param p1, "formulaElement"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    .line 62
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    .line 70
    :sswitch_0
    const-string v1, "RIGHT_INDEX_KNUCKLE_Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 69
    :sswitch_1
    const-string v1, "RIGHT_INDEX_KNUCKLE_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 73
    :sswitch_2
    const-string v1, "RIGHT_THUMB_KNUCKLE_Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_THUMB_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 74
    :sswitch_3
    const-string v1, "RIGHT_THUMB_KNUCKLE_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_THUMB_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 77
    :sswitch_4
    const-string v1, "SECOND_FACE_X_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 78
    :sswitch_5
    const-string v1, "SECOND_FACE_Y_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 64
    :sswitch_6
    const-string v1, "LEFT_PINKY_KNUCKLE_Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_PINKY_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 63
    :sswitch_7
    const-string v1, "LEFT_PINKY_KNUCKLE_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_PINKY_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 75
    :sswitch_8
    const-string v1, "FACE_X_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 76
    :sswitch_9
    const-string v1, "FACE_Y_POSITION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 68
    :sswitch_a
    const-string v1, "LEFT_INDEX_KNUCKLE_Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 67
    :sswitch_b
    const-string v1, "LEFT_INDEX_KNUCKLE_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 72
    :sswitch_c
    const-string v1, "LEFT_THUMB_KNUCKLE_Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_THUMB_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 71
    :sswitch_d
    const-string v1, "LEFT_THUMB_KNUCKLE_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_THUMB_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 66
    :sswitch_e
    const-string v1, "RIGHT_PINKY_KNUCKLE_Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_PINKY_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 65
    :sswitch_f
    const-string v1, "RIGHT_PINKY_KNUCKLE_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_PINKY_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 79
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_2
    nop

    .line 80
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77770a93 -> :sswitch_f
        -0x77770a92 -> :sswitch_e
        -0x340c6a35 -> :sswitch_d
        -0x340c6a34 -> :sswitch_c
        -0xde07e39 -> :sswitch_b
        -0xde07e38 -> :sswitch_a
        -0x680168f -> :sswitch_9
        0x5367852 -> :sswitch_8
        0x11f74d78 -> :sswitch_7
        0x11f74d79 -> :sswitch_6
        0x19b80fa6 -> :sswitch_5
        0x256e9e87 -> :sswitch_4
        0x42853dc0 -> :sswitch_3
        0x42853dc1 -> :sswitch_2
        0x68b129bc -> :sswitch_1
        0x68b129bd -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const-class v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void
.end method

.method public doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "formulaElement":Ljava/lang/Object;
    instance-of v1, v0, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    if-nez v1, :cond_0

    return-object v0

    .line 56
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->getElementType()Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/FormulaElement$ElementType;

    if-eq v1, v2, :cond_1

    return-object v0

    .line 57
    :cond_1
    move-object v1, v0

    check-cast v1, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-object v2, v0

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/io/XStreamFormulaElementConverter;->replaceOldSensorNames(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->setValue(Ljava/lang/String;)V

    .line 58
    return-object v0
.end method
