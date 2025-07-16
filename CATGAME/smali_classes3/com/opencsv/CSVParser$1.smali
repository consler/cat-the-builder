.class synthetic Lcom/opencsv/CSVParser$1;
.super Ljava/lang/Object;
.source "CSVParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opencsv/CSVParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$opencsv$enums$CSVReaderNullFieldIndicator:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 303
    invoke-static {}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->values()[Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/opencsv/CSVParser$1;->$SwitchMap$com$opencsv$enums$CSVReaderNullFieldIndicator:[I

    :try_start_0
    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->BOTH:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {v1}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/opencsv/CSVParser$1;->$SwitchMap$com$opencsv$enums$CSVReaderNullFieldIndicator:[I

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_SEPARATORS:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {v1}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/opencsv/CSVParser$1;->$SwitchMap$com$opencsv$enums$CSVReaderNullFieldIndicator:[I

    sget-object v1, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->EMPTY_QUOTES:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    invoke-virtual {v1}, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
