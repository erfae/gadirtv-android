.class public final synthetic Lcom/magoware/magoware/webtv/util/-$$Lambda$TopicSubscriber$Nxh-6MwRsuwam3Um2bI7t_4Oj6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/util/TopicSubscriber;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/util/TopicSubscriber;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/-$$Lambda$TopicSubscriber$Nxh-6MwRsuwam3Um2bI7t_4Oj6w;->f$0:Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/util/-$$Lambda$TopicSubscriber$Nxh-6MwRsuwam3Um2bI7t_4Oj6w;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/-$$Lambda$TopicSubscriber$Nxh-6MwRsuwam3Um2bI7t_4Oj6w;->f$0:Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/util/-$$Lambda$TopicSubscriber$Nxh-6MwRsuwam3Um2bI7t_4Oj6w;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->lambda$subscribeTo$0$TopicSubscriber(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method
