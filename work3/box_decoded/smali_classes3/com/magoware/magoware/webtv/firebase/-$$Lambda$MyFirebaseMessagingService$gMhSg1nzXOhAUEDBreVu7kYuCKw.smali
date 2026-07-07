.class public final synthetic Lcom/magoware/magoware/webtv/firebase/-$$Lambda$MyFirebaseMessagingService$gMhSg1nzXOhAUEDBreVu7kYuCKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/firebase/MyFirebaseMessagingService;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/firebase/MyFirebaseMessagingService;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/firebase/-$$Lambda$MyFirebaseMessagingService$gMhSg1nzXOhAUEDBreVu7kYuCKw;->f$0:Lcom/magoware/magoware/webtv/firebase/MyFirebaseMessagingService;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/firebase/-$$Lambda$MyFirebaseMessagingService$gMhSg1nzXOhAUEDBreVu7kYuCKw;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/firebase/-$$Lambda$MyFirebaseMessagingService$gMhSg1nzXOhAUEDBreVu7kYuCKw;->f$0:Lcom/magoware/magoware/webtv/firebase/MyFirebaseMessagingService;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/firebase/-$$Lambda$MyFirebaseMessagingService$gMhSg1nzXOhAUEDBreVu7kYuCKw;->f$1:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/firebase/MyFirebaseMessagingService;->lambda$getEventFromPushMsg$0$MyFirebaseMessagingService(Ljava/util/Map;)V

    return-void
.end method
