.class public abstract Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;,
        Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;
    }
.end annotation


# instance fields
.field private final arguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;)V
    .locals 2
    .param p1, "type"    # Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;->type:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    .line 73
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;->arguments:Ljava/util/Map;

    .line 74
    return-void
.end method


# virtual methods
.method public addArgument(Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;
    .param p2, "value"    # Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;->arguments:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public getType()Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;->type:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;->arguments:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 83
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;

    invoke-virtual {v3}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$ArgumentType;Ljava/lang/Object;>;"
    goto :goto_0

    .line 85
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v1, "payloadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command;->type:Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;

    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/command/Command$Type;->getTypeID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cmd"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "args"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v2
.end method
