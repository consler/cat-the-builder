.class Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;
.super Ljava/lang/Object;
.source "BackwardCompatibleCatrobatLanguageXStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrickInfo"
.end annotation


# instance fields
.field private brickClassName:Ljava/lang/String;

.field private brickFieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/content/bricks/Brick$BrickField;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;Ljava/lang/String;)V
    .locals 0
    .param p2, "brickClassName"    # Ljava/lang/String;

    .line 1218
    iput-object p1, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->this$0:Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    iput-object p2, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->brickClassName:Ljava/lang/String;

    .line 1220
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;

    .line 1214
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->brickClassName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method addBrickFieldToMap(Ljava/lang/String;Lorg/catrobat/catroid/content/bricks/Brick$BrickField;)V
    .locals 1
    .param p1, "oldFiledName"    # Ljava/lang/String;
    .param p2, "brickField"    # Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    .line 1223
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->brickFieldMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->brickFieldMap:Ljava/util/HashMap;

    .line 1226
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->brickFieldMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    return-void
.end method

.method getBrickClassName()Ljava/lang/String;
    .locals 1

    .line 1237
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->brickClassName:Ljava/lang/String;

    return-object v0
.end method

.method getBrickFieldForOldFieldName(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/Brick$BrickField;
    .locals 1
    .param p1, "oldFiledName"    # Ljava/lang/String;

    .line 1230
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackwardCompatibleCatrobatLanguageXStream$BrickInfo;->brickFieldMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    return-object v0

    .line 1233
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
