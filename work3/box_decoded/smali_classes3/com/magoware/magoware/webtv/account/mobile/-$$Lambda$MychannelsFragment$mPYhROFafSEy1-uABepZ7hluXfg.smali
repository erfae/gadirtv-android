.class public final synthetic Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$mPYhROFafSEy1-uABepZ7hluXfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$mPYhROFafSEy1-uABepZ7hluXfg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$mPYhROFafSEy1-uABepZ7hluXfg;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$mPYhROFafSEy1-uABepZ7hluXfg;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$mPYhROFafSEy1-uABepZ7hluXfg;->INSTANCE:Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$mPYhROFafSEy1-uABepZ7hluXfg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->lambda$onFinishAddChannel$4(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
