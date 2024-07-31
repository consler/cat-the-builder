.class public final Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;
.super Ljava/lang/Object;
.source "FormulaElementResources.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFormulaElementResources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormulaElementResources.kt\norg/catrobat/catroid/formulaeditor/common/FormulaElementResources\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,227:1\n1#2:228\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0003J\"\u0010\n\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0003J\"\u0010\r\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0003J\"\u0010\u000e\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0003J\"\u0010\u000f\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0003J\"\u0010\u0010\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\tH\u0007J\"\u0010\u0012\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0003J\"\u0010\u0013\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;",
        "",
        "()V",
        "addAIExtensionFunctionsResources",
        "",
        "resources",
        "",
        "",
        "function",
        "Lorg/catrobat/catroid/formulaeditor/Functions;",
        "addAIExtensionSensorsResources",
        "sensor",
        "Lorg/catrobat/catroid/formulaeditor/Sensors;",
        "addCollisionSensorsResources",
        "addDeviceSensorsResources",
        "addExtensionSensorsResources",
        "addFunctionResources",
        "functions",
        "addPoseDetectionSensorsResources",
        "addSensorsResources",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addAIExtensionFunctionsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Functions;)V
    .locals 3
    .param p0, "resources"    # Ljava/util/Set;
    .param p1, "function"    # Lorg/catrobat/catroid/formulaeditor/Functions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 67
    nop

    .line 71
    nop

    .line 67
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Functions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_1
    const/16 v0, 0x1c

    .line 67
    nop

    .line 71
    nop

    .line 228
    .local v0, "it":I
    const/4 v1, 0x0

    .line 71
    .local v1, "$i$a$-let-FormulaElementResources$addAIExtensionFunctionsResources$1":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-FormulaElementResources$addAIExtensionFunctionsResources$1":I
    return-void
.end method

.method private static final addAIExtensionSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V
    .locals 3
    .param p0, "resources"    # Ljava/util/Set;
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/Sensors;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;->addPoseDetectionSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V

    .line 41
    nop

    .line 62
    nop

    .line 41
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    goto :goto_2

    .line 59
    :pswitch_0
    const/16 v0, 0x17

    goto :goto_1

    .line 57
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_1

    .line 49
    :pswitch_2
    const/4 v0, 0x4

    .line 41
    :goto_1
    nop

    .line 62
    nop

    .line 228
    .local v0, "it":I
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$a$-let-FormulaElementResources$addAIExtensionSensorsResources$1":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-FormulaElementResources$addAIExtensionSensorsResources$1":I
    return-void

    .line 61
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final addCollisionSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V
    .locals 3
    .param p0, "resources"    # Ljava/util/Set;
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/Sensors;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 209
    nop

    .line 214
    nop

    .line 209
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_1
    const/16 v0, 0x13

    .line 209
    nop

    .line 214
    nop

    .line 228
    .local v0, "it":I
    const/4 v1, 0x0

    .line 214
    .local v1, "$i$a$-let-FormulaElementResources$addCollisionSensorsResources$1":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-FormulaElementResources$addCollisionSensorsResources$1":I
    return-void
.end method

.method private static final addDeviceSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V
    .locals 3
    .param p0, "resources"    # Ljava/util/Set;
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/Sensors;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 154
    nop

    .line 174
    nop

    .line 154
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    goto :goto_2

    .line 172
    :pswitch_0
    const/16 v0, 0x18

    goto :goto_1

    .line 170
    :pswitch_1
    const/16 v0, 0x10

    goto :goto_1

    .line 167
    :pswitch_2
    const/16 v0, 0x12

    goto :goto_1

    .line 162
    :pswitch_3
    const/16 v0, 0xf

    goto :goto_1

    .line 160
    :pswitch_4
    const/16 v0, 0xe

    goto :goto_1

    .line 157
    :pswitch_5
    const/16 v0, 0xd

    .line 154
    :goto_1
    nop

    .line 174
    nop

    .line 228
    .local v0, "it":I
    const/4 v1, 0x0

    .line 174
    .local v1, "$i$a$-let-FormulaElementResources$addDeviceSensorsResources$1":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-FormulaElementResources$addDeviceSensorsResources$1":I
    return-void

    .line 173
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final addExtensionSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V
    .locals 3
    .param p0, "resources"    # Ljava/util/Set;
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/Sensors;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 179
    nop

    .line 204
    nop

    .line 179
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    goto :goto_2

    .line 202
    :pswitch_0
    const/16 v0, 0x16

    goto :goto_1

    .line 195
    :pswitch_1
    const/16 v0, 0xa

    goto :goto_1

    .line 188
    :pswitch_2
    const/16 v0, 0x14

    goto :goto_1

    .line 183
    :pswitch_3
    const/4 v0, 0x2

    .line 179
    :goto_1
    nop

    .line 204
    nop

    .line 228
    .local v0, "it":I
    const/4 v1, 0x0

    .line 204
    .local v1, "$i$a$-let-FormulaElementResources$addExtensionSensorsResources$1":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-FormulaElementResources$addExtensionSensorsResources$1":I
    return-void

    .line 203
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final addFunctionResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Functions;)V
    .locals 3
    .param p0, "resources"    # Ljava/util/Set;
    .param p1, "functions"    # Lorg/catrobat/catroid/formulaeditor/Functions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/Functions;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-static {p0, p1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;->addAIExtensionFunctionsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Functions;)V

    .line 220
    nop

    .line 224
    nop

    .line 220
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Functions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x7

    goto :goto_1

    .line 221
    :cond_2
    const/4 v0, 0x6

    .line 220
    :goto_1
    nop

    .line 224
    nop

    .line 228
    .local v0, "it":I
    const/4 v1, 0x0

    .line 224
    .local v1, "$i$a$-let-FormulaElementResources$addFunctionResources$1":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-FormulaElementResources$addFunctionResources$1":I
    return-void
.end method

.method private static final addPoseDetectionSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V
    .locals 3
    .param p0, "resources"    # Ljava/util/Set;
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/Sensors;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 76
    nop

    .line 149
    nop

    .line 76
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    goto :goto_1

    .line 146
    :pswitch_0
    const/16 v0, 0x1b

    .line 76
    nop

    .line 149
    nop

    .line 228
    .local v0, "it":I
    const/4 v1, 0x0

    .line 149
    .local v1, "$i$a$-let-FormulaElementResources$addPoseDetectionSensorsResources$1":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-FormulaElementResources$addPoseDetectionSensorsResources$1":I
    return-void

    .line 148
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final addSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V
    .locals 1
    .param p0, "resources"    # Ljava/util/Set;
    .param p1, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/catrobat/catroid/formulaeditor/Sensors;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p0, p1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;->addDeviceSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V

    .line 33
    invoke-static {p0, p1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;->addExtensionSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V

    .line 34
    invoke-static {p0, p1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;->addAIExtensionSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V

    .line 35
    invoke-static {p0, p1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources;->addCollisionSensorsResources(Ljava/util/Set;Lorg/catrobat/catroid/formulaeditor/Sensors;)V

    .line 36
    return-void
.end method
