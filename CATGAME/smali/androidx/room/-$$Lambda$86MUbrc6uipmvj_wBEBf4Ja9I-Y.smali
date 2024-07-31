.class public final synthetic Landroidx/room/-$$Lambda$86MUbrc6uipmvj_wBEBf4Ja9I-Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/room/-$$Lambda$86MUbrc6uipmvj_wBEBf4Ja9I-Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/-$$Lambda$86MUbrc6uipmvj_wBEBf4Ja9I-Y;

    invoke-direct {v0}, Landroidx/room/-$$Lambda$86MUbrc6uipmvj_wBEBf4Ja9I-Y;-><init>()V

    sput-object v0, Landroidx/room/-$$Lambda$86MUbrc6uipmvj_wBEBf4Ja9I-Y;->INSTANCE:Landroidx/room/-$$Lambda$86MUbrc6uipmvj_wBEBf4Ja9I-Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
