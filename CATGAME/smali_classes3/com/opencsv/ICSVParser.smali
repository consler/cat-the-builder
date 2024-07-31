.class public interface abstract Lcom/opencsv/ICSVParser;
.super Ljava/lang/Object;
.source "ICSVParser.java"


# static fields
.field public static final DEFAULT_BUNDLE_NAME:Ljava/lang/String; = "opencsv"

.field public static final DEFAULT_ESCAPE_CHARACTER:C = '\\'

.field public static final DEFAULT_IGNORE_LEADING_WHITESPACE:Z = true

.field public static final DEFAULT_IGNORE_QUOTATIONS:Z = false

.field public static final DEFAULT_NULL_FIELD_INDICATOR:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

.field public static final DEFAULT_QUOTE_CHARACTER:C = '\"'

.field public static final DEFAULT_SEPARATOR:C = ','

.field public static final DEFAULT_STRICT_QUOTES:Z = false

.field public static final INITIAL_READ_SIZE:I = 0x400

.field public static final MAX_SIZE_FOR_EMPTY_FIELD:I = 0x10

.field public static final NEWLINE:Ljava/lang/String; = "\n"

.field public static final NULL_CHARACTER:C = '\u0000'

.field public static final READ_BUFFER_SIZE:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    sget-object v0, Lcom/opencsv/enums/CSVReaderNullFieldIndicator;->NEITHER:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    sput-object v0, Lcom/opencsv/ICSVParser;->DEFAULT_NULL_FIELD_INDICATOR:Lcom/opencsv/enums/CSVReaderNullFieldIndicator;

    return-void
.end method


# virtual methods
.method public abstract getPendingText()Ljava/lang/String;
.end method

.method public abstract getQuotechar()C
.end method

.method public abstract getSeparator()C
.end method

.method public abstract isPending()Z
.end method

.method public abstract nullFieldIndicator()Lcom/opencsv/enums/CSVReaderNullFieldIndicator;
.end method

.method public abstract parseLine(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parseLineMulti(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parseToLine([Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract setErrorLocale(Ljava/util/Locale;)V
.end method
