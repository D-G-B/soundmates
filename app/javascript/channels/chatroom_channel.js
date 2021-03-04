import consumer from "./consumer";

const initChatroomChannel = () => {
  const messagesContainer = document.getElementById("messages");
  if (messagesContainer) {
    // subscribe to the channel
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        // console.log(data); // called when data is broadcast in the cable
        messagesContainer.insertAdjacentHTML("beforeend", data);
      },
    });
  }
};

export { initChatroomChannel };