.class public final synthetic Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$nINJmmgKN5x0NkDzqOmPBvVDtUo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$nINJmmgKN5x0NkDzqOmPBvVDtUo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$nINJmmgKN5x0NkDzqOmPBvVDtUo;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$nINJmmgKN5x0NkDzqOmPBvVDtUo;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$nINJmmgKN5x0NkDzqOmPBvVDtUo;->INSTANCE:Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$nINJmmgKN5x0NkDzqOmPBvVDtUo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->lambda$onPrepared$2(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
