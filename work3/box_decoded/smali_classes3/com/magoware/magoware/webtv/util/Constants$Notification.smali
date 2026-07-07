.class public Lcom/magoware/magoware/webtv/util/Constants$Notification;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notification"
.end annotation


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final IMAGE_URL:Ljava/lang/String; = "imageurl"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VALUES:Ljava/lang/String; = "values"


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/Constants;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/util/Constants;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/Constants$Notification;->this$0:Lcom/magoware/magoware/webtv/util/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
