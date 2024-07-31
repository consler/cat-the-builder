.class public final Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;
.super Ljava/lang/Object;
.source "FormulaElementOperations.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFormulaElementOperations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormulaElementOperations.kt\norg/catrobat/catroid/formulaeditor/common/FormulaElementOperations\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,351:1\n1#2:352\n1517#3:353\n1588#3,3:354\n2438#3,3:380\n1711#3,3:383\n1517#3:386\n1588#3,3:387\n99#4:357\n71#4,22:358\n*E\n*S KotlinDebug\n*F\n+ 1 FormulaElementOperations.kt\norg/catrobat/catroid/formulaeditor/common/FormulaElementOperations\n*L\n217#1:353\n217#1,3:354\n238#1,3:380\n257#1,3:383\n264#1:386\n264#1,3:387\n234#1:357\n234#1,22:358\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0007J \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J*\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0007J\u0012\u0010\u0016\u001a\u00020\u00042\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0007J \u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000fH\u0007J,\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\n2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u001e\u0010!\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000fH\u0007J\u0016\u0010#\u001a\u00020\u00012\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000fH\u0002J*\u0010%\u001a\u00020\u00012\u0008\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020*H\u0007J\u0018\u0010+\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0007J*\u0010,\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010(\u001a\u00020 2\u0006\u0010)\u001a\u00020*2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010-\u001a\u00020\u00012\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010/H\u0007J\u0012\u00100\u001a\u00020\u00012\u0008\u00101\u001a\u0004\u0018\u000102H\u0007J\u0012\u00103\u001a\u00020\u00012\u0008\u00104\u001a\u0004\u0018\u000105H\u0007J\u0010\u00106\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0008H\u0007J\u0016\u00107\u001a\u00020\u00062\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000fH\u0002J\u0012\u00109\u001a\u00020\u00012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0001H\u0007J$\u0010:\u001a\u0010\u0012\u000c\u0012\n ;*\u0004\u0018\u00010\n0\n0\u000f2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0007J$\u0010=\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0007J\u001c\u0010@\u001a\u0004\u0018\u00010\u00102\u0006\u0010A\u001a\u00020 2\u0008\u0010B\u001a\u0004\u0018\u00010\u0004H\u0007J \u0010C\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000fH\u0007J,\u0010D\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\n2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0007J\u0010\u0010E\u001a\u00020\u00082\u0006\u0010F\u001a\u00020\u0001H\u0007J\u001a\u0010G\u001a\u00020\u00012\u0006\u0010H\u001a\u00020I2\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0007J\u0010\u0010L\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u0001H\u0007J\u0010\u0010M\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u0004H\u0003\u00a8\u0006N"
    }
    d2 = {
        "Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;",
        "",
        "()V",
        "booleanToLocalizedString",
        "",
        "value",
        "",
        "calculateCollidesWithFinger",
        "",
        "look",
        "Lorg/catrobat/catroid/content/Look;",
        "equalsDoubleIEEE754",
        "left",
        "right",
        "getAllClones",
        "",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sprite",
        "stageListener",
        "Lorg/catrobat/catroid/stage/StageListener;",
        "getLookLayerIndex",
        "spriteList",
        "getLookName",
        "lookData",
        "Lorg/catrobat/catroid/common/LookData;",
        "getNumberOfLooks",
        "",
        "lookDataList",
        "interpretCollision",
        "firstLook",
        "secondSpriteName",
        "currentlyPlayingScene",
        "Lorg/catrobat/catroid/content/Scene;",
        "interpretLookCollision",
        "looks",
        "interpretMultipleItemsUserList",
        "userListValues",
        "interpretObjectSensor",
        "sensor",
        "Lorg/catrobat/catroid/formulaeditor/Sensors;",
        "currentlyEditedScene",
        "currentProject",
        "Lorg/catrobat/catroid/content/Project;",
        "interpretOperatorEqual",
        "interpretSensor",
        "interpretUserDefinedBrickInput",
        "userDefinedBrickInput",
        "Lorg/catrobat/catroid/formulaeditor/UserData;",
        "interpretUserList",
        "userList",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "interpretUserVariable",
        "userVariable",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        "isInteger",
        "listConsistsOfSingleCharacters",
        "userListStringValues",
        "normalizeDegeneratedDoubleValues",
        "toLooks",
        "kotlin.jvm.PlatformType",
        "sprites",
        "tryCalculateCollidesWithEdge",
        "screen",
        "Lcom/badlogic/gdx/math/Rectangle;",
        "tryFindSprite",
        "scene",
        "spriteName",
        "tryGetLookNumber",
        "tryInterpretCollision",
        "tryInterpretDoubleValue",
        "obj",
        "tryInterpretElementRecursive",
        "element",
        "Lorg/catrobat/catroid/formulaeditor/FormulaElement;",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "tryParseIntFromObject",
        "tryParseIntFromString",
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
.field public static final INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final booleanToLocalizedString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Z

    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1204b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CatroidApplication.getAp\u2026ring.formula_editor_true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12036a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CatroidApplication.getAp\u2026ing.formula_editor_false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-object v0
.end method

.method public static final calculateCollidesWithFinger(Lorg/catrobat/catroid/content/Look;)D
    .locals 2
    .param p0, "look"    # Lorg/catrobat/catroid/content/Look;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "look"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    nop

    .line 143
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getCurrentCollisionPolygon()[Lcom/badlogic/gdx/math/Polygon;

    move-result-object v0

    .line 144
    invoke-static {}, Lorg/catrobat/catroid/utils/TouchUtil;->getCurrentTouchingPoints()Ljava/util/ArrayList;

    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lorg/catrobat/catroid/sensing/CollisionDetection;->collidesWithFinger([Lcom/badlogic/gdx/math/Polygon;Ljava/util/ArrayList;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final equalsDoubleIEEE754(DD)Z
    .locals 1
    .param p0, "left"    # D
    .param p2, "right"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double v0, p0, p2

    if-ltz v0, :cond_2

    cmpg-double v0, p0, p2

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final getAllClones(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/stage/StageListener;)Ljava/util/List;
    .locals 5
    .param p0, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p1, "stageListener"    # Lorg/catrobat/catroid/stage/StageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            "Lorg/catrobat/catroid/stage/StageListener;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sprite"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Lorg/catrobat/catroid/stage/StageListener;
    const/4 v1, 0x0

    .line 193
    .local v1, "$i$a$-let-FormulaElementOperations$getAllClones$1":I
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/stage/StageListener;->getAllClonesOfSprite(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;

    move-result-object v3

    const-string v4, "it.getAllClonesOfSprite(sprite)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 192
    .end local v0    # "it":Lorg/catrobat/catroid/stage/StageListener;
    .end local v1    # "$i$a$-let-FormulaElementOperations$getAllClones$1":I
    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0
.end method

.method public static final getLookLayerIndex(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Look;Ljava/util/List;)D
    .locals 5
    .param p0, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p1, "look"    # Lorg/catrobat/catroid/content/Look;
    .param p2, "spriteList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            "Lorg/catrobat/catroid/content/Look;",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "look"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spriteList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Look;->getZIndex()I

    move-result v0

    .line 56
    .local v0, "lookZIndex":I
    nop

    .line 57
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 58
    :cond_0
    if-gez v0, :cond_1

    invoke-interface {p2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    int-to-double v1, v1

    goto :goto_0

    .line 59
    :cond_1
    int-to-double v1, v0

    const/4 v3, 0x2

    int-to-double v3, v3

    sub-double/2addr v1, v3

    .line 56
    :goto_0
    return-wide v1
.end method

.method public static final getLookName(Lorg/catrobat/catroid/common/LookData;)Ljava/lang/String;
    .locals 1
    .param p0, "lookData"    # Lorg/catrobat/catroid/common/LookData;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 114
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static final getNumberOfLooks(Lorg/catrobat/catroid/common/LookData;Ljava/util/List;)I
    .locals 2
    .param p0, "lookData"    # Lorg/catrobat/catroid/common/LookData;
    .param p1, "lookDataList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/common/LookData;",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "lookDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/common/LookData;->getIsWebRequest()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    .line 121
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 118
    :goto_0
    return v0
.end method

.method public static final interpretCollision(Lorg/catrobat/catroid/content/Look;Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/stage/StageListener;)D
    .locals 4
    .param p0, "firstLook"    # Lorg/catrobat/catroid/content/Look;
    .param p1, "secondSpriteName"    # Ljava/lang/String;
    .param p2, "currentlyPlayingScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "stageListener"    # Lorg/catrobat/catroid/stage/StageListener;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "firstLook"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentlyPlayingScene"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    nop

    .line 298
    invoke-static {p2, p1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryFindSprite(Lorg/catrobat/catroid/content/Scene;Ljava/lang/String;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    nop

    .line 299
    .local v0, "secondSprite":Lorg/catrobat/catroid/content/Sprite;
    nop

    .line 300
    instance-of v1, v0, Lorg/catrobat/catroid/content/GroupSprite;

    if-eqz v1, :cond_0

    .line 301
    nop

    .line 302
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v1

    .line 300
    invoke-static {p1, v1}, Lorg/catrobat/catroid/content/GroupSprite;->getSpritesFromGroupWithGroupName(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {v0, p3}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->getAllClones(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/stage/StageListener;)Ljava/util/List;

    move-result-object v1

    .line 299
    :goto_0
    nop

    .line 306
    .local v1, "sprites":Ljava/util/List;
    const-string v2, "sprites"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->toLooks(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretLookCollision(Lorg/catrobat/catroid/content/Look;Ljava/util/List;)D

    move-result-wide v2

    return-wide v2

    .line 298
    .end local v0    # "secondSprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v1    # "sprites":Ljava/util/List;
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final interpretLookCollision(Lorg/catrobat/catroid/content/Look;Ljava/util/List;)D
    .locals 9
    .param p0, "look"    # Lorg/catrobat/catroid/content/Look;
    .param p1, "looks"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Look;",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/content/Look;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "look"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 383
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_1

    .line 384
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lorg/catrobat/catroid/content/Look;

    .local v6, "it":Lorg/catrobat/catroid/content/Look;
    const/4 v7, 0x0

    .line 258
    .local v7, "$i$a$-any-FormulaElementOperations$interpretLookCollision$collides$1":I
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v3

    if-eqz v8, :cond_2

    invoke-static {p0, v6}, Lorg/catrobat/catroid/sensing/CollisionDetection;->checkCollisionBetweenLooks(Lorg/catrobat/catroid/content/Look;Lorg/catrobat/catroid/content/Look;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v4

    .end local v6    # "it":Lorg/catrobat/catroid/content/Look;
    .end local v7    # "$i$a$-any-FormulaElementOperations$interpretLookCollision$collides$1":I
    :goto_0
    if-eqz v6, :cond_1

    goto :goto_1

    .line 385
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v3, v4

    .line 257
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_1
    move v0, v3

    .line 260
    .local v0, "collides":Z
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v1

    return-wide v1
.end method

.method private final interpretMultipleItemsUserList(Ljava/util/List;)Ljava/lang/Object;
    .locals 16
    .param p1, "userListValues"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 217
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 353
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 354
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 355
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "it":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 218
    .local v8, "$i$a$-map-FormulaElementOperations$interpretMultipleItemsUserList$userListStringValues$1":I
    sget-object v9, Lorg/catrobat/catroid/utils/NumberFormats;->Companion:Lorg/catrobat/catroid/utils/NumberFormats$Companion;

    .line 219
    nop

    .line 220
    instance-of v10, v7, Ljava/lang/Integer;

    if-eqz v10, :cond_0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 221
    :cond_0
    instance-of v10, v7, Ljava/lang/Double;

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 222
    :cond_1
    instance-of v10, v7, Ljava/lang/Boolean;

    if-eqz v10, :cond_2

    sget-object v10, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;

    move-object v11, v7

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-direct {v10, v11}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->booleanToLocalizedString(Z)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 223
    :cond_2
    instance-of v10, v7, Ljava/lang/Character;

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 224
    :cond_3
    if-eqz v7, :cond_4

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    .line 219
    :goto_1
    nop

    .line 218
    invoke-virtual {v9, v10}, Lorg/catrobat/catroid/utils/NumberFormats$Companion;->trimTrailingCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .end local v7    # "it":Ljava/lang/Object;
    .end local v8    # "$i$a$-map-FormulaElementOperations$interpretMultipleItemsUserList$userListStringValues$1":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 224
    .restart local v6    # "item$iv$iv":Ljava/lang/Object;
    .restart local v7    # "it":Ljava/lang/Object;
    .restart local v8    # "$i$a$-map-FormulaElementOperations$interpretMultipleItemsUserList$userListStringValues$1":I
    :cond_4
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v9, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v5, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 356
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    .end local v7    # "it":Ljava/lang/Object;
    .end local v8    # "$i$a$-map-FormulaElementOperations$interpretMultipleItemsUserList$userListStringValues$1":I
    :cond_5
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 353
    nop

    .line 217
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    move-object v0, v2

    .line 228
    .local v0, "userListStringValues":Ljava/util/List;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v2, p0

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->listConsistsOfSingleCharacters(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, ""

    goto :goto_2

    :cond_6
    const-string v3, " "

    .line 230
    .local v3, "separator":Ljava/lang/String;
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 231
    .local v5, "userListStringValue":Ljava/lang/String;
    sget-object v6, Lorg/catrobat/catroid/utils/NumberFormats;->Companion:Lorg/catrobat/catroid/utils/NumberFormats$Companion;

    invoke-virtual {v6, v5}, Lorg/catrobat/catroid/utils/NumberFormats$Companion;->trimTrailingCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .end local v5    # "userListStringValue":Ljava/lang/String;
    goto :goto_3

    .line 234
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "stringBuilder.toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v4, "$this$trim$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 357
    .local v5, "$i$f$trim":I
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    .local v6, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 358
    .local v7, "$i$f$trim":I
    const/4 v8, 0x0

    .line 359
    .local v8, "startIndex$iv$iv":I
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 360
    .local v9, "endIndex$iv$iv":I
    const/4 v11, 0x0

    .line 362
    .local v11, "startFound$iv$iv":Z
    :goto_4
    if-gt v8, v9, :cond_d

    .line 363
    if-nez v11, :cond_8

    move v12, v8

    goto :goto_5

    :cond_8
    move v12, v9

    .line 364
    .local v12, "index$iv$iv":I
    :goto_5
    invoke-interface {v6, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .local v13, "it":C
    const/4 v14, 0x0

    .line 234
    .local v14, "$i$a$-trim-FormulaElementOperations$interpretMultipleItemsUserList$1":I
    const/16 v15, 0x20

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_9

    move v15, v10

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    .end local v13    # "it":C
    .end local v14    # "$i$a$-trim-FormulaElementOperations$interpretMultipleItemsUserList$1":I
    :goto_6
    move v13, v15

    .line 366
    .local v13, "match$iv$iv":Z
    if-nez v11, :cond_b

    .line 367
    if-nez v13, :cond_a

    .line 368
    const/4 v11, 0x1

    goto :goto_7

    .line 370
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 372
    :cond_b
    if-nez v13, :cond_c

    .line 373
    goto :goto_8

    .line 375
    :cond_c
    add-int/lit8 v9, v9, -0x1

    .line 376
    .end local v12    # "index$iv$iv":I
    .end local v13    # "match$iv$iv":Z
    :goto_7
    nop

    .line 362
    goto :goto_4

    .line 379
    :cond_d
    :goto_8
    add-int/lit8 v10, v9, 0x1

    invoke-interface {v6, v8, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 357
    .end local v6    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v7    # "$i$f$trim":I
    .end local v8    # "startIndex$iv$iv":I
    .end local v9    # "endIndex$iv$iv":I
    .end local v11    # "startFound$iv$iv":Z
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    .end local v4    # "$this$trim$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trim":I
    return-object v4
.end method

.method public static final interpretObjectSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Project;)Ljava/lang/Object;
    .locals 6
    .param p0, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "currentlyEditedScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "currentProject"    # Lorg/catrobat/catroid/content/Project;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentlyEditedScene"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentProject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .line 156
    .local v0, "look":Lorg/catrobat/catroid/content/Look;
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v1

    .line 157
    .local v1, "lookDataList":Ljava/util/List;
    const-string v2, "look"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getLookData()Lorg/catrobat/catroid/common/LookData;

    move-result-object v2

    const-string v3, "lookDataList"

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/common/LookData;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 159
    .local v2, "lookData":Lorg/catrobat/catroid/common/LookData;
    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v4, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    goto/16 :goto_2

    .line 185
    :pswitch_0
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->calculateCollidesWithFinger(Lorg/catrobat/catroid/content/Look;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto/16 :goto_3

    .line 180
    :pswitch_1
    nop

    .line 181
    nop

    .line 182
    sget-object v3, Lorg/catrobat/catroid/stage/StageActivity;->stageListener:Lorg/catrobat/catroid/stage/StageListener;

    .line 183
    invoke-virtual {p3}, Lorg/catrobat/catroid/content/Project;->getScreenRectangle()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v4

    .line 180
    invoke-static {v0, v3, v4}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryCalculateCollidesWithEdge(Lorg/catrobat/catroid/content/Look;Lorg/catrobat/catroid/stage/StageListener;Lcom/badlogic/gdx/math/Rectangle;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto/16 :goto_3

    .line 179
    :pswitch_2
    invoke-static {}, Lorg/catrobat/catroid/nfc/NfcHandler;->getLastNfcTagId()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 178
    :pswitch_3
    invoke-static {}, Lorg/catrobat/catroid/nfc/NfcHandler;->getLastNfcTagMessage()Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_3

    .line 177
    :pswitch_4
    invoke-static {v2}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->getLookName(Lorg/catrobat/catroid/common/LookData;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 175
    :pswitch_5
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->getNumberOfLooks(Lorg/catrobat/catroid/common/LookData;Ljava/util/List;)I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto/16 :goto_3

    .line 174
    :pswitch_6
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryGetLookNumber(Lorg/catrobat/catroid/common/LookData;Ljava/util/List;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto/16 :goto_3

    .line 172
    :pswitch_7
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getDistanceToTouchPositionInUserInterfaceDimensions()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto/16 :goto_3

    .line 171
    :pswitch_8
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getYVelocityInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto/16 :goto_3

    .line 170
    :pswitch_9
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXVelocityInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto/16 :goto_3

    .line 169
    :pswitch_a
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getAngularVelocityInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    .line 168
    :pswitch_b
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getYInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    .line 167
    :pswitch_c
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getXInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    .line 166
    :pswitch_d
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getSizeInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    .line 165
    :pswitch_e
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getLookDirectionInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    .line 164
    :pswitch_f
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getMotionDirectionInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    .line 163
    :pswitch_10
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v3

    const-string v4, "currentlyEditedScene.spriteList"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v3}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->getLookLayerIndex(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Look;Ljava/util/List;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    .line 162
    :pswitch_11
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getTransparencyInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    .line 161
    :pswitch_12
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getColorInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    .line 160
    :pswitch_13
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Look;->getBrightnessInUserInterfaceDimensionUnit()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_3

    .line 186
    :goto_2
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 159
    :goto_3
    const-string v4, "when (sensor) {\n        \u2026nversions.FALSE\n        }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final interpretOperatorEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "left"    # Ljava/lang/Object;
    .param p1, "right"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "left"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "right"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "leftString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "rightString":Ljava/lang/String;
    nop

    .line 72
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->equalsDoubleIEEE754(DD)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "_":Ljava/lang/NumberFormatException;
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 71
    .end local v2    # "_":Ljava/lang/NumberFormatException;
    :goto_0
    return v2
.end method

.method public static final interpretSensor(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Project;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p1, "currentlyEditedScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p2, "currentProject"    # Lorg/catrobat/catroid/content/Project;
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sprite"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentlyEditedScene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentProject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-static {p3}, Lorg/catrobat/catroid/formulaeditor/Sensors;->getSensorByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v0

    .line 274
    .local v0, "sensor":Lorg/catrobat/catroid/formulaeditor/Sensors;
    iget-boolean v1, v0, Lorg/catrobat/catroid/formulaeditor/Sensors;->isObjectSensor:Z

    if-eqz v1, :cond_0

    .line 275
    invoke-static {v0, p0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretObjectSensor(Lorg/catrobat/catroid/formulaeditor/Sensors;Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/content/Project;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getSensorValue(Lorg/catrobat/catroid/formulaeditor/Sensors;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SensorHandler.getSensorValue(sensor)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    :goto_0
    return-object v1
.end method

.method public static final interpretUserDefinedBrickInput(Lorg/catrobat/catroid/formulaeditor/UserData;)Ljava/lang/Object;
    .locals 3
    .param p0, "userDefinedBrickInput"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 246
    if-eqz p0, :cond_2

    move-object v0, p0

    .local v0, "it":Lorg/catrobat/catroid/formulaeditor/UserData;
    const/4 v1, 0x0

    .line 247
    .local v1, "$i$a$-let-FormulaElementOperations$interpretUserDefinedBrickInput$1":I
    nop

    .line 248
    instance-of v2, v0, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    invoke-static {v2}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 249
    :cond_0
    instance-of v2, v0, Lorg/catrobat/catroid/formulaeditor/UserList;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-static {v2}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 250
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 247
    nop

    .line 246
    .end local v0    # "it":Lorg/catrobat/catroid/formulaeditor/UserData;
    .end local v1    # "$i$a$-let-FormulaElementOperations$interpretUserDefinedBrickInput$1":I
    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    .line 252
    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 246
    :goto_1
    return-object v2
.end method

.method public static final interpretUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)Ljava/lang/Object;
    .locals 5
    .param p0, "userList"    # Lorg/catrobat/catroid/formulaeditor/UserList;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 199
    if-eqz p0, :cond_2

    move-object v0, p0

    .local v0, "it":Lorg/catrobat/catroid/formulaeditor/UserList;
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$a$-let-FormulaElementOperations$interpretUserList$1":I
    nop

    .line 201
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 203
    :cond_1
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v3

    const-string v4, "it.value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretMultipleItemsUserList(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    .line 200
    nop

    .line 199
    .end local v0    # "it":Lorg/catrobat/catroid/formulaeditor/UserList;
    .end local v1    # "$i$a$-let-FormulaElementOperations$interpretUserList$1":I
    :goto_0
    if-eqz v2, :cond_2

    goto :goto_1

    .line 205
    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 199
    :goto_1
    return-object v2
.end method

.method public static final interpretUserVariable(Lorg/catrobat/catroid/formulaeditor/UserVariable;)Ljava/lang/Object;
    .locals 2
    .param p0, "userVariable"    # Lorg/catrobat/catroid/formulaeditor/UserVariable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 242
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final isInteger(D)Z
    .locals 5
    .param p0, "value"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 107
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v3

    cmpg-double v0, p0, v3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private final listConsistsOfSingleCharacters(Ljava/util/List;)Z
    .locals 9
    .param p1, "userListStringValues"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 238
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 380
    .local v1, "$i$f$none":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_1

    .line 381
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 238
    .local v7, "$i$a$-none-FormulaElementOperations$listConsistsOfSingleCharacters$1":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v4, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v3

    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-none-FormulaElementOperations$listConsistsOfSingleCharacters$1":I
    :goto_0
    if-eqz v6, :cond_1

    goto :goto_1

    .line 382
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v3, v4

    .line 238
    .end local v0    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$none":I
    :goto_1
    return v3
.end method

.method public static final normalizeDegeneratedDoubleValues(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 92
    nop

    .line 93
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    :goto_0
    move-object v0, p0

    goto :goto_2

    .line 95
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2

    .line 96
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2

    .line 97
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    .line 98
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Double;D)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v0, -0x10000000000001L

    goto :goto_1

    :cond_4
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    .line 99
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Double;D)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_1

    .line 100
    :cond_5
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 97
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2

    .line 102
    :cond_6
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 92
    :goto_2
    return-object v0
.end method

.method public static final toLooks(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p0, "sprites"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Look;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sprites"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 386
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 387
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 388
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/catrobat/catroid/content/Sprite;

    .local v7, "it":Lorg/catrobat/catroid/content/Sprite;
    const/4 v8, 0x0

    .line 264
    .local v8, "$i$a$-map-FormulaElementOperations$toLooks$1":I
    iget-object v7, v7, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    .end local v7    # "it":Lorg/catrobat/catroid/content/Sprite;
    .end local v8    # "$i$a$-map-FormulaElementOperations$toLooks$1":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 389
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 386
    nop

    .line 264
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method

.method public static final tryCalculateCollidesWithEdge(Lorg/catrobat/catroid/content/Look;Lorg/catrobat/catroid/stage/StageListener;Lcom/badlogic/gdx/math/Rectangle;)D
    .locals 2
    .param p0, "look"    # Lorg/catrobat/catroid/content/Look;
    .param p1, "stageListener"    # Lorg/catrobat/catroid/stage/StageListener;
    .param p2, "screen"    # Lcom/badlogic/gdx/math/Rectangle;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "look"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lorg/catrobat/catroid/stage/StageListener;->firstFrameDrawn:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    nop

    .line 133
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getCurrentCollisionPolygon()[Lcom/badlogic/gdx/math/Polygon;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/catrobat/catroid/sensing/CollisionDetection;->collidesWithEdge([Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    .line 132
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->booleanToDouble(Z)D

    move-result-wide v0

    goto :goto_0

    .line 136
    :cond_0
    const-wide/16 v0, 0x0

    .line 131
    :goto_0
    return-wide v0
.end method

.method public static final tryFindSprite(Lorg/catrobat/catroid/content/Scene;Ljava/lang/String;)Lorg/catrobat/catroid/content/Sprite;
    .locals 2
    .param p0, "scene"    # Lorg/catrobat/catroid/content/Scene;
    .param p1, "spriteName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "scene"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    nop

    .line 284
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/content/Scene;->getSprite(Ljava/lang/String;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "_":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 283
    .end local v0    # "_":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return-object v0
.end method

.method public static final tryGetLookNumber(Lorg/catrobat/catroid/common/LookData;Ljava/util/List;)D
    .locals 6
    .param p0, "lookData"    # Lorg/catrobat/catroid/common/LookData;
    .param p1, "lookDataList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/common/LookData;",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;)D"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "lookDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p0, :cond_0

    move-object v2, p0

    .line 352
    .local v2, "it":Lorg/catrobat/catroid/common/LookData;
    const/4 v3, 0x0

    .line 111
    .local v3, "$i$a$-let-FormulaElementOperations$tryGetLookNumber$1":I
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v0, v4

    .end local v2    # "it":Lorg/catrobat/catroid/common/LookData;
    .end local v3    # "$i$a$-let-FormulaElementOperations$tryGetLookNumber$1":I
    :cond_0
    return-wide v0
.end method

.method public static final tryInterpretCollision(Lorg/catrobat/catroid/content/Look;Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/stage/StageListener;)D
    .locals 3
    .param p0, "firstLook"    # Lorg/catrobat/catroid/content/Look;
    .param p1, "secondSpriteName"    # Ljava/lang/String;
    .param p2, "currentlyPlayingScene"    # Lorg/catrobat/catroid/content/Scene;
    .param p3, "stageListener"    # Lorg/catrobat/catroid/stage/StageListener;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "firstLook"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentlyPlayingScene"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    nop

    .line 318
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->interpretCollision(Lorg/catrobat/catroid/content/Look;Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;Lorg/catrobat/catroid/stage/StageListener;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "_":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .line 317
    .end local v0    # "_":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method

.method public static final tryInterpretDoubleValue(Ljava/lang/Object;)D
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "obj"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    nop

    .line 81
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "_":Ljava/lang/NumberFormatException;
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .line 81
    .end local v0    # "_":Ljava/lang/NumberFormatException;
    :goto_0
    const-string v1, "try {\n                va\u2026 Double.NaN\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    .line 86
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 80
    :goto_1
    return-wide v0
.end method

.method public static final tryInterpretElementRecursive(Lorg/catrobat/catroid/formulaeditor/FormulaElement;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;
    .locals 3
    .param p0, "element"    # Lorg/catrobat/catroid/formulaeditor/FormulaElement;
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "element"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    nop

    .line 328
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->interpretRecursive(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "numberFormatException":Ljava/lang/NumberFormatException;
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .line 327
    .end local v0    # "numberFormatException":Ljava/lang/NumberFormatException;
    :goto_0
    return-object v0
.end method

.method public static final tryParseIntFromObject(Ljava/lang/Object;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    nop

    .line 337
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations;->tryParseIntFromString(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 338
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    .line 336
    :goto_0
    return v0
.end method

.method private static final tryParseIntFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 344
    nop

    .line 345
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int v0, v0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "_":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    move v0, v1

    .line 344
    .end local v0    # "_":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method
