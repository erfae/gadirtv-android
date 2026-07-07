.class public Lcom/magoware/magoware/webtv/util/TopicSubscriber;
.super Ljava/lang/Object;
.source "TopicSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/util/TopicSubscriber$Topics;
    }
.end annotation


# static fields
.field private static instance:Lcom/magoware/magoware/webtv/util/TopicSubscriber;


# instance fields
.field private topics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTopicToList(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topic"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->topics:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->topics:Ljava/util/ArrayList;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getTopics()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcom/magoware/magoware/webtv/util/TopicSubscriber;
    .locals 1

    .line 13
    sget-object v0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->instance:Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->instance:Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    .line 16
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->instance:Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    return-object v0
.end method

.method private normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topic"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "live_tv/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeTopicFromList(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topic"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->topics:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->topics:Ljava/util/ArrayList;

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getTopics()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getTopics()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->topics:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public synthetic lambda$subscribeTo$0$TopicSubscriber(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->addTopicToList(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$unsubscribeFrom$1$TopicSubscriber(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->removeTopicFromList(Ljava/lang/String;)V

    return-void
.end method

.method public subscribeTo(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topic"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/util/-$$Lambda$TopicSubscriber$Nxh-6MwRsuwam3Um2bI7t_4Oj6w;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/util/-$$Lambda$TopicSubscriber$Nxh-6MwRsuwam3Um2bI7t_4Oj6w;-><init>(Lcom/magoware/magoware/webtv/util/TopicSubscriber;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public subscribeToChannel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelName"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->subscribeTo(Ljava/lang/String;)V

    return-void
.end method

.method public unsubscribeAllTopics()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->topics:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->unsubscribeFrom(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unsubscribeFrom(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "topic"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getTopics()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/util/-$$Lambda$TopicSubscriber$1hgySWQ-OjTnjFnD0hC3te-K6eI;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/util/-$$Lambda$TopicSubscriber$1hgySWQ-OjTnjFnD0hC3te-K6eI;-><init>(Lcom/magoware/magoware/webtv/util/TopicSubscriber;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public unsubscribeFromChannel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelName"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->unsubscribeFrom(Ljava/lang/String;)V

    return-void
.end method
