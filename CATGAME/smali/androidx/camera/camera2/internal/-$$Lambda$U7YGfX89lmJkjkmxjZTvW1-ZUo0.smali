.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$U7YGfX89lmJkjkmxjZTvW1-ZUo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/CamcorderProfileHelper;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$U7YGfX89lmJkjkmxjZTvW1-ZUo0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/-$$Lambda$U7YGfX89lmJkjkmxjZTvW1-ZUo0;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/-$$Lambda$U7YGfX89lmJkjkmxjZTvW1-ZUo0;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/-$$Lambda$U7YGfX89lmJkjkmxjZTvW1-ZUo0;->INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$U7YGfX89lmJkjkmxjZTvW1-ZUo0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasProfile(II)Z
    .locals 0

    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    return p1
.end method
