.class abstract enum Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;
.super Ljava/lang/Enum;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/WireFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Utf8Validation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

.field public static final enum LAZY:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

.field public static final enum LOOSE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

.field public static final enum STRICT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 190
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation$1;

    const-string v1, "LOOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    .line 197
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation$2;

    const-string v1, "STRICT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    .line 204
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation$3;

    const-string v1, "LAZY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;->LAZY:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    .line 188
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    aput-object v5, v1, v2

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$1;

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 188
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    return-object v0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;
    .locals 1

    .line 188
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/WireFormat$Utf8Validation;

    return-object v0
.end method


# virtual methods
.method abstract readString(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
