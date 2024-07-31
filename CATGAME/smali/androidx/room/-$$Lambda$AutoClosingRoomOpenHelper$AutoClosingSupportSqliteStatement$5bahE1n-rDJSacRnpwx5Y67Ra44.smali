.class public final synthetic Landroidx/room/-$$Lambda$AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$5bahE1n-rDJSacRnpwx5Y67Ra44;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/room/-$$Lambda$AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$5bahE1n-rDJSacRnpwx5Y67Ra44;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/-$$Lambda$AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$5bahE1n-rDJSacRnpwx5Y67Ra44;

    invoke-direct {v0}, Landroidx/room/-$$Lambda$AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$5bahE1n-rDJSacRnpwx5Y67Ra44;-><init>()V

    sput-object v0, Landroidx/room/-$$Lambda$AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$5bahE1n-rDJSacRnpwx5Y67Ra44;->INSTANCE:Landroidx/room/-$$Lambda$AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$5bahE1n-rDJSacRnpwx5Y67Ra44;

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

    invoke-static {p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;->lambda$execute$1(Landroidx/sqlite/db/SupportSQLiteStatement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
