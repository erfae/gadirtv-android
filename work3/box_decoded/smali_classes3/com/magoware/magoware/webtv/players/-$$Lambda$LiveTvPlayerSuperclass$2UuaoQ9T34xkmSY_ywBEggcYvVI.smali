.class public final synthetic Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$2UuaoQ9T34xkmSY_ywBEggcYvVI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$2UuaoQ9T34xkmSY_ywBEggcYvVI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$2UuaoQ9T34xkmSY_ywBEggcYvVI;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$2UuaoQ9T34xkmSY_ywBEggcYvVI;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$2UuaoQ9T34xkmSY_ywBEggcYvVI;->INSTANCE:Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$2UuaoQ9T34xkmSY_ywBEggcYvVI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->lambda$onSingleTapUp$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
