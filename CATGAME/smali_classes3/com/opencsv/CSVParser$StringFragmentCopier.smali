.class Lcom/opencsv/CSVParser$StringFragmentCopier;
.super Ljava/lang/Object;
.source "CSVParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opencsv/CSVParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringFragmentCopier"
.end annotation


# instance fields
.field private i:I

.field private final input:Ljava/lang/String;

.field private pendingSubstrFrom:I

.field private pendingSubstrTo:I

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    .line 411
    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    .line 412
    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    .line 415
    iput-object p1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    .line 416
    return-void
.end method

.method static synthetic access$000(Lcom/opencsv/CSVParser$StringFragmentCopier;)I
    .locals 1
    .param p0, "x0"    # Lcom/opencsv/CSVParser$StringFragmentCopier;

    .line 401
    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    return v0
.end method

.method private materializeBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 427
    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    .line 431
    :cond_0
    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    if-ge v0, v1, :cond_1

    .line 432
    iget-object v2, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 433
    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public append(C)V
    .locals 1
    .param p1, "pending"    # C

    .line 444
    invoke-direct {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->materializeBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 1
    .param p1, "pending"    # Ljava/lang/String;

    .line 440
    invoke-direct {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->materializeBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    return-void
.end method

.method public appendPrev()V
    .locals 3

    .line 448
    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    if-ne v0, v1, :cond_0

    .line 449
    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    .line 450
    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    goto :goto_0

    .line 451
    :cond_0
    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 452
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    goto :goto_0

    .line 454
    :cond_1
    invoke-direct {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->materializeBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    iget v2, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    :goto_0
    return-void
.end method

.method public clearOutput()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 464
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 467
    :cond_0
    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    iput v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    .line 468
    return-void
.end method

.method public isEmptyInput()Z
    .locals 2

    .line 419
    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    iget-object v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmptyOutput()Z
    .locals 2

    .line 459
    iget v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peekOutput()Ljava/lang/String;
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->sb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->materializeBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 472
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrFrom:I

    iget v2, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->pendingSubstrTo:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public takeInput()C
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->input:Ljava/lang/String;

    iget v1, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/opencsv/CSVParser$StringFragmentCopier;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public takeOutput()Ljava/lang/String;
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->peekOutput()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/opencsv/CSVParser$StringFragmentCopier;->clearOutput()V

    .line 481
    return-object v0
.end method
