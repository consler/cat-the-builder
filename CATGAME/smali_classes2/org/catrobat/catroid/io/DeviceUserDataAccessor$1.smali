.class Lorg/catrobat/catroid/io/DeviceUserDataAccessor$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "DeviceUserDataAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->readMapFromJson()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/HashMap<",
        "Ljava/util/UUID;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/io/DeviceUserDataAccessor;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/DeviceUserDataAccessor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/io/DeviceUserDataAccessor;

    .line 131
    iput-object p1, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor$1;->this$0:Lorg/catrobat/catroid/io/DeviceUserDataAccessor;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
