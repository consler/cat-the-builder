.class Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiteralEncoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;
    }
.end annotation


# instance fields
.field m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

.field m_NumPosBits:I

.field m_NumPrevBits:I

.field m_PosMask:I

.field final synthetic this$0:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    .line 70
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->this$0:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Create(II)V
    .locals 4
    .param p1, "numPosBits"    # I
    .param p2, "numPrevBits"    # I

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_NumPrevBits:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_NumPosBits:I

    if-ne v0, p1, :cond_0

    return-void

    .line 137
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_NumPosBits:I

    .line 138
    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_PosMask:I

    .line 139
    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_NumPrevBits:I

    .line 140
    add-int v1, p2, p1

    shl-int/2addr v0, v1

    .line 141
    .local v0, "numStates":I
    new-array v1, v0, [Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 143
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    new-instance v3, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;)V

    aput-object v3, v2, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "prevByte"    # B

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_PosMask:I

    and-int/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_NumPrevBits:I

    shl-int/2addr v1, v2

    and-int/lit16 v3, p2, 0xff

    rsub-int/lit8 v2, v2, 0x8

    ushr-int v2, v3, v2

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public Init()V
    .locals 3

    .line 147
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_NumPrevBits:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_NumPosBits:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 148
    .local v0, "numStates":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 149
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->Init()V

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
